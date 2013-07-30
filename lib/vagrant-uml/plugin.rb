require "vagrant"

module Vagrant
  module Uml
    class Plugin < Vagrant.plugin("2")
      name "Usermode Linux (UML) provider"
      description <<-EOF
      The UML provider allows Vagrant to manage and control
      UML-based virtual machines.
      EOF

      provider(:uml) do
        require_relative "provider"
        Vagrant::UML::Provider
      end
    end
  end
end
