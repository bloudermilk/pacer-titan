# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "pacer-titan/version"

Gem::Specification.new do |s|
  s.name        = "pacer-titan"
  s.version     = Pacer::Titan::VERSION
  s.platform    = "java"
  s.authors     = ["Brendan Loudermilk", "Darrick Wiebe"]
  s.email       = ["bloudermilk@gmail.com", "darrick@innatesoftware.com"]
  s.homepage    = "https://github.com/bloudermilk/pacer-titan"
  s.summary     = %q{Titan jars and related code for Pacer}
  s.description = s.summary

  s.add_dependency "pacer"

  s.files         = `git ls-files`.split("\n") + [Pacer::Titan::JAR_PATH]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
