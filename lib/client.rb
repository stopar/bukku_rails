class Client
  # The BASE_URI below is there to facilitate test only
  BASE_URI = "https://rekon.org"

  attr_reader :token, :domain

  def initialize(token:, domain:)
    @token = token
    @domain = domain
  end

  private

  def base_uri
    self.class::BASE_URI
  end

  def default_headers
    {
      'Authorization' => "Bearer #{@token}",
      'Company-Subdomain' => "#{@domain}",
      'Accept' => 'application/json'
    }
  end

  def get(path, query: {})
    make_request Net::HTTP::Get, path, query: query
  end

  def post(path, query: {}, body: {})
    make_request Net::HTTP::Post, path, query: query, body: body
  end

  def make_request(klass, path, query: {}, body: {})
    uri = URI("#{base_uri}#{path}")
    uri.query = URI.encode_www_form(query) if query

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.instance_of?(URI::HTTPS)
 
    # Add the 2 lines below because development keeps on failing SSL CRL checks
    # Check this article for explanation: https://dev.to/madhuhari188/how-we-solved-unable-to-get-certificate-crl-in-rails-a-debugging-story-2pna
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    http.verify_callback = ->(_preverify_ok, _store_ctx) { true }

    # Uncomment below for debuging purpose to see the payload that was sent.
    # http.set_debug_output($stdout)

    request = klass.new(uri.request_uri, default_headers)
    if body && !body.empty?
      request.body = body.to_json
    end

    response = http.request(request)

    case response.code.to_i
    when 200, 201, 202, 203, 204
      # JSON.parse(response.body) if response.body.present?
      JSON.parse(response.body) if response.body && !response.body.empty?
    else
      raise Error, "#{response.code}: #{response.body}"
    end
  end

  class Error < StandardError; end
end
