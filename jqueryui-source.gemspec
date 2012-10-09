# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jqueryui-source/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel X. Moore"]
  gem.email         = ["yahivin@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jqueryui-source"
  gem.require_paths = ["lib"]
  gem.version       = Jqueryui::Source::VERSION

  gem.add_dependency "jquery-source", ">= 1.6"
end
