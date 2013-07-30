module Vagrant
  module UML
    module Action
      class CopyBox
        def initialize(app, env)
          @app = app
        end

        def call(env)
          env[:ui].info "Copying box..."
          FileUtils.cp_r(Dir.glob(env[:machine].box.directory.to_s + "/*"), env[:machine].data_dir)
          @app.call(env)
        end
      end
    end
  end
end