# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'itamae-relative-recipe-graph'
  spec.version       = '0.0.1'
  spec.authors       = ['ntrv']
  spec.email         = ['hydrangea56@me.com']
  spec.summary       = 'Make recipe graph of relative path in itamae.'
  spec.description   = 'Make recipe graph of relative path in itamae.'
  spec.homepage      = 'https://github.com/ntrv/itamae-relative-recipe-graph'
  spec.license       = 'Apache'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'itamae'
end
