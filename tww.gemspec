# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tww/version'

Gem::Specification.new do |spec|
  spec.name          = 'tww'
  spec.version       = TWW::VERSION
  spec.authors       = ['Daniel Libanori']
  spec.email         = ['daniel.libanori@clicksign.com']

  spec.summary       = 'Send SMS from TWW provider'
  spec.homepage      = 'https://github.com/clicksign/tww'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.0'
  spec.add_dependency 'rest-client', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'cucumber', '~> 3.1'
  spec.add_development_dependency 'coveralls', '~> 0.8.0'
  spec.add_development_dependency 'webmock', '~> 3.8'
end
