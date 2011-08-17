# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "finansu/version"
 
Gem::Specification.new do |s|
  s.name        = "finansu"
  s.version     = FinAnSu::VERSION
  s.authors     = ["Bryan McKelvey"]
  s.email       = ["bryan.mckelvey@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/finansu"
  s.summary     = %q{Gets security quotes}
  s.description = %q{Seriously. It gets security quotes.}
   
  s.rubyforge_project = "finansu"
   
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
