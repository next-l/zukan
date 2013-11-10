$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zukan/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zukan"
  s.version     = Zukan::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["tanabe@mwr.mediacom.keio.ac.jp"]
  s.homepage    = "https://github.com/next-l/zukan"
  s.summary     = "zukan"
  s.description = "authority data management system"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.15"
  s.add_dependency "enju_core", "~> 0.1.1.pre6"
  s.add_dependency "ruby-graphviz"
  s.add_dependency "jquery-ui-rails"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
