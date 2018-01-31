$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blazer/api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "blazer-api"
  spec.version     = Blazer::Api::VERSION
  spec.authors     = ["Francisco Martins"]
  spec.email       = ["franciscomxs@gmail.com"]
  spec.homepage    = "https://github.com/franciscomxs/blazer-api"
  spec.summary     = "Add a JSON API to Blazer"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'rails', '< 6 ', '>= 4'
  spec.add_dependency 'blazer', '~> 1.8'
  spec.add_dependency 'sequel', '~> 5.0'

  spec.add_development_dependency 'pg', '~> 0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'database_cleaner', '~> 1.6'
  spec.add_development_dependency 'factory_bot', '~> 4.8'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1'
end
