# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Jan Graichen", "Dmitriy Kiriyenko"]
  gem.email         = ["jan.graichen@altimos.de", "dmitriy.kiriyenko@anahoret.com"]
  gem.description   = "An OmniAuth strategy to fake authenticate using a model class."
  gem.summary       = "An OmniAuth strategy to fake authenticate using a model class. Does not use password"
  gem.homepage      = "https://github.com/jgraichen/omniauth-internal"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-fake"
  gem.require_paths = ["lib"]
  gem.version       = "0.2.0"

  gem.add_dependency "omniauth-multipassword"
end
