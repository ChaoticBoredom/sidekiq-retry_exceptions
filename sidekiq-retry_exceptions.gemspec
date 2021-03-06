# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/retry_exceptions/version'

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-retry_exceptions"
  spec.version       = Sidekiq::RetryExceptions::VERSION
  spec.authors       = ["Kyle Richelhoff"]
  spec.email         = "nospam@getjobber.com"

  spec.summary       = %q{Job retrying without the noise.}
  spec.homepage      = "https://github.com/grepme/sidekiq-retry_exceptions"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "redis-namespace", "~> 1.5.2"
  spec.add_development_dependency "rake", "~> 11.2.2"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sidekiq", "~> 4.0"
  spec.add_development_dependency "pry", "~> 0.10"
end
