require 'pp'
module Vagrant
  module UML
    module Action
      class StartInstance
        def initialize(app, env)
          @app = app
        end

        def call(env)
          env[:ui].info "Starting instance"
          run_pid = Process.spawn(
              env[:machine].data_dir.to_s + "/run",
              :chdir => env[:machine].data_dir.to_s ,
              :out => "/vagrant/wtf.log")
          Process.detach run_pid
          env[:ui].success "Instance started successfully"
          @app.call(env)
        end
      end
    end
  end
end