require 'singleton'
module LocomotiveContrib
  class ExtensionsManager
    include Singleton

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
  end
end
