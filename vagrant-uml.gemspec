# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-uml/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-uml"
  spec.version       = Vagrant::Uml::VERSION
  spec.authors       = ["Martin Naumann"]
  spec.email         = ["martin.naumann@centralway.com"]
  spec.description   = "Usermode Linux provider for Vagrant"
  spec.summary       = "UML for Vagrant"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.files.reject! { |file| ["example_box", "debian6-uml.box"].include?(File.basename(file)) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
