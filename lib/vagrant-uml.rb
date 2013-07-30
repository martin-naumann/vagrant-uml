require 'vagrant-uml/version'
require 'vagrant-uml/plugin'
require 'vagrant-uml/action'

lib_path = Pathname.new(File.expand_path("../vagrant-uml", __FILE__))
autoload :Action, lib_path.join("action")