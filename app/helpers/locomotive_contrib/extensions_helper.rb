module LocomotiveContrib
  module ExtensionsHelper

    def extensions_collection(extensions)
      extensions.collect{|i| [t(i, :scope => "locomotive_contrib.extensions"), i]}
    end

  end
end
