require 'refinerycms-base'

module Refinery
  module Patients
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "patients"
          plugin.activity = {
            :class => Patient,
            :title => 'firstname'
          }
        end
      end
    end
  end
end
