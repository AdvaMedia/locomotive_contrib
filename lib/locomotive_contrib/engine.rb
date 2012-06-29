require 'locomotive_contrib/dependencies'

$:.unshift File.dirname(__FILE__) # TODO: not sure about that, looks pretty useless

module LocomotiveContrib
  class Engine < ::Rails::Engine
    isolate_namespace LocomotiveContrib

    initializer 'locomotive.cells' do |app|
      ::Cell::Base.prepend_view_path("#{config.root}/app/cells")
    end

    initializer 'locomotive.action_controller' do |app|
      ::ActionController::Base.wrap_parameters :format => [:json]
    end

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
