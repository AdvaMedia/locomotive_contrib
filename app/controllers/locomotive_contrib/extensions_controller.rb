module LocomotiveContrib
  class ExtensionsController < BaseController

    sections 'extensions'

    skip_load_and_authorize_resource

    def index
      @site = current_site
    end
  end
end
