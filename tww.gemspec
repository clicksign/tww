# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tww/version'

Gem::Specification.new do |spec|
  spec.name          = 'tww'
  spec.version       = Tww::VERSION
  spec.authors       = ['Daniel Libanori']
  spec.email         = ['daniellibanori@gmail.com']

  spec.summary       = 'Send SMS from TWW provider'
  spec.homepage      = 'https://github.com/dlibanori/tww'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'cucumber', '~> 2.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.0'
  spec.add_development_dependency 'webmock', '~> 1.0'
  spec.add_development_dependency 'byebug', '~> 8.0'
  spec.add_development_dependency 'guard', '~> 2.0'
  spec.add_development_dependency 'guard-rake', '~> 1.0'
end
