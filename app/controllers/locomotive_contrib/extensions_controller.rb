module LocomotiveContrib
  class ExtensionsController < BaseController

    sections 'extensions'

    load_and_authorize_resource :class => 'LocomotiveContrib::Extension'

    def index
      @site = current_site
      @extensions = @site.extensions.web
    end

    def new
      @site = current_site
    end
  end
end
