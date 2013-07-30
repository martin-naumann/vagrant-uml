require "vagrant/action/builder"

module Vagrant
  module UML
    module Action
      include Vagrant::Action::Builtin

      def self.action_up(machine)
        Vagrant::Action::Builder.new.tap do |b|
          b.use HandleBoxUrl
          b.use ConfigValidate
          b.use CopyBox
          b.use StartInstance
        end
      end

      action_root = Pathname.new(File.expand_path("../action", __FILE__))
      autoload :CopyBox, action_root.join("copy_box")
      autoload :StartInstance, action_root.join("start_instance")
    end
  end
end