module LocomotiveContrib
  class Engine < ::Rails::Engine
    isolate_namespace LocomotiveContrib

    config.generators do |g|
      g.view_specs false
      g.helper_specs false
      g.orm :mongoid
      g.template_engine :haml
      g.test_framework :rspec, :fixture => true, :views => false
      g.fixture_replacement :factory_girl
    end
  end
end
