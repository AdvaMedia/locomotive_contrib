require 'singleton'
module LocomotiveContrib
  class ExtensionsManager
    include Singleton
    include Locomotive::Engine.routes.url_helpers

    def initialize
      @extensions ||= []
    end

    def define(&block)
      instance_eval(&block) if block_given?
    end

    def extension(slug)
      @extensions << slug unless @extensions.include?(slug)
    end

    def extensions
      @extensions
    end

    def path(extension)
      case extension.to_s
      when /sitemap/
        sitemap_path
      else extensions_path
      end
    end
  end
end
