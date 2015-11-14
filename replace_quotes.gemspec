# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'replace_quotes/version'

Gem::Specification.new do |spec|
  spec.name          = 'replace_quotes'
  spec.version       = ReplaceQuotes::VERSION
  spec.authors       = ['Jason Hsu']
  spec.email         = ['rubygems@jasonhsu.com']

  spec.summary       = 'Replaces unnecessary double quotes with single quotes'
  spec.description   = 'Replaces unnecessary double quotes with single quotes'
  spec.homepage      = 'https://github.com/jhsu802701/replace_quotes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sandi_meter'
  spec.add_development_dependency 'bundler-audit'
  spec.add_development_dependency 'gemsurance'
  spec.add_development_dependency 'codeclimate-test-reporter'

  spec.add_runtime_dependency 'string_in_file'
end
