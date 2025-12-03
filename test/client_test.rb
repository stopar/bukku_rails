require 'test_helper'

class ClientTest < Minitest::Test
  def setup
    @client = Client.new(domain: 'test', token: 'abc123')
  end

  def test_domain
    assert_equal 'test', @client.domain
  end

  def test_token
    assert_equal 'abc123', @client.token
  end

  def test_authorization_header
    stub_request(:get, "https://rekon.org/").with(headers: {
      'Authorization' => 'Bearer abc123',
      'Company-Subdomain' => 'test',
      'Accept' => 'application/json'
    })
    @client.send(:get, '/' )
  end

  def test_get
    stub_request(:get, "https://rekon.org/").with(headers: {
      'Authorization' => 'Bearer abc123',
      'Company-Subdomain' => 'test',
      'Accept' => 'application/json'
    })
    @client.send(:get, '/')
  end

  def test_get_with_query_params
    stub_request(:get, "https://rekon.org/?foo=bar").with(headers: {
      'Authorization' => 'Bearer abc123',
      'Company-Subdomain' => 'test',
      'Accept' => 'application/json'
    })
    @client.send(:get, '/', query: {foo: :bar} )
  end
  
  def test_post
    stub_request(:post, "https://rekon.org/comment").with(
      headers: {
      'Authorization' => 'Bearer abc123',
      'Company-Subdomain' => 'test',
      'Accept' => 'application/json'
      },
      body: "{\"foo\":{\"bar\":\"baz\"}}"
    )
    @client.send(:post, "/comment", body: {foo: {bar: :baz}})
  end

  def test_500 
    stub_request(:get, "https://rekon.org/").with(headers: {
      'Authorization' => 'Bearer abc123',
      'Company-Subdomain' => 'test',
      'Accept' => 'application/json'
    }).to_return(status: 500)

    assert_raises Client::Error do
      @client.send(:get, "/")
    end
  end

end
