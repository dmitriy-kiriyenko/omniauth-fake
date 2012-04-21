# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Jan Graichen"]
  gem.email         = ["jan.graichen@altimos.de"]
  gem.description   = "A OmniAuth strategy to authenticate using a model class."
  gem.summary       = "A OmniAuth strategy to authenticate using a model class."
  gem.homepage      = "https://github.com/jgraichen/omniauth-internal"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-internal"
  gem.require_paths = ["lib"]
  gem.version       = "0.1.0"

  gem.add_dependency "omniauth-multipassword"
end
