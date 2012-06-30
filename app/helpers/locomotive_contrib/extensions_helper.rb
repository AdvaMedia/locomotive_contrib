module LocomotiveContrib
  module ExtensionsHelper

    def extensions_collection(extensions)
      extensions = extensions.map(&:to_s) - @site.extensions.map(&:slug).compact
      extensions.collect{|i| [t(i, :scope => "locomotive_contrib.extensions"), i]}
    end

  end
end
