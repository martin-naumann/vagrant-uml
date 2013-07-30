require "vagrant/ui"

module Vagrant
  module UML
    class Provider < Vagrant.plugin("2", :provider)
      def initialize(machine)
        @machine = machine
      end

      def action(name)
        action_method = "action_#{name}"
        return Action.send(action_method, @machine) if Action.respond_to?(action_method)
        nil
      end

      def ssh_info
        nil
      end

      def machine_id_changed
        nil
      end

      def state
        nil
      end
    end
  end
end