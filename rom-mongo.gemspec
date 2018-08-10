# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rom/mongo/version'

Gem::Specification.new do |spec|
  spec.name          = 'rom-mongo'
  spec.version       = ROM::Mongo::VERSION.dup
  spec.authors       = ['Piotr Solnica']
  spec.email         = ['piotr.solnica@gmail.com']
  spec.summary       = 'MongoDB support for Ruby Object Mapper'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rom-rb/rom-mongo'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rom-core', '~> 4.2', '>= 4.2.0'
  spec.add_runtime_dependency 'mongo', '~> 2.6', '>= 2.6.1'
  spec.add_runtime_dependency 'origin', '~> 2.3', '>= 2.3.1'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '~> 0.28.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
end
