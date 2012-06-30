module LocomotiveContrib
  class BaseController < ::Locomotive::BaseController
    
    def current_ability
      @current_ability ||= LocomotiveContrib::Ability.new(current_locomotive_account, current_site)
    end
  end
end
