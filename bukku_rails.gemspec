require_relative 'lib/bukku_rails/version'

Gem::Specification.new do |spec|
  spec.name = 'bukku_rails'
  spec.version = BukkuRails::VERSION
  spec.authors = ['Muzaffar Ariff']
  spec.email = ['muz@geligalabs.com']

  spec.summary = 'Bukku Cloud accounting API implementation in Ruby and usage mostly for Rails apps'
  spec.description = 'Use Rails conventions to call Bukku API requests.'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['source_code_uri'] = 'https://github.com/stopar/bukku_rails'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
