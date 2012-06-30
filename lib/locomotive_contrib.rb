require "locomotive_contrib/engine"

module LocomotiveContrib

  def self.manager
    LocomotiveContrib::ExtensionsManager.instance
  end
end
