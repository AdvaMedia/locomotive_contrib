$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "locomotive_contrib/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "locomotive_contrib"
  s.version     = LocomotiveContrib::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LocomotiveContrib."
  s.description = "TODO: Description of LocomotiveContrib."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.6"
end
