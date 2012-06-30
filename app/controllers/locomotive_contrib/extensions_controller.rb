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
      @extension = @site.extensions.build(params[:extension])
      @extension.configuration = LocomotiveContrib::Extension::Configuration.new
      respond_with(@extension)
    end

    def create
      @site = current_site
      @extension = @site.extensions.build(params[:extension])
      @extension.configuration = LocomotiveContrib::Extension::Configuration.new
      @extension.save
      respond_with @extension, :location => extensions_path
    end

    def show
      @extension = current_site.extensions.find(params[:id])
    end

    def destroy
      @extension = current_site.extensions.find(params[:id])
      @extension.destroy if @extension.present?
      redirect_to extensions_path
    end
  end
end
