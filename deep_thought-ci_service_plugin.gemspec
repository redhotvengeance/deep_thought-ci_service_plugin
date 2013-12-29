# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deep_thought-ci_service_plugin/version'

Gem::Specification.new do |gem|
  gem.name          = "deep_thought-ci_service_plugin"
  gem.version       = DeepThought::VERSION
  gem.authors       = ["You"]
  gem.email         = ["your@email.here"]
  gem.description   = "Deep Thought CI service for <>."
  gem.summary       = "Deep Thought CI service for <>."
  gem.homepage      = "https://github.com/redhotvengeance/deep_thought-ci_service_plugin"

  gem.files         = `git ls-files`.split("\n") - %w[.gitignore]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "deep_thought", "~>0.2"

  # # testing
  gem.add_development_dependency "minitest", "~>4.7"
  gem.add_development_dependency "mocha", "~>0.14"
  gem.add_development_dependency "database_cleaner", "~>1.2"
  gem.add_development_dependency "turn", "~>0.9"
end
