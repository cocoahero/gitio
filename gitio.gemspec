# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gitio/version"

Gem::Specification.new do |s|
  s.name        = "gitio"
  s.version     = GitIO::VERSION
  s.authors     = ["Jonathan Baker"]
  s.email       = ["jonathanmbaker@me.com"]
  s.homepage    = ""
  s.summary     = %q{Shrinks URLs using the github URL shortener, git.io}
  s.description = %q{Shrinks URLs using the github URL shortener, git.io}

  s.rubyforge_project = "gitio"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "thor"
end
