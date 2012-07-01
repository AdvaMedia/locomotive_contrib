module Locomotive
  class ContribController < BaseController
    
    def current_ability
      @current_ability ||= Locomotive::ContribAbility.new(current_locomotive_account, current_site)
    end

    rescue_from CanCan::AccessDenied do |exception|
      ::Locomotive.log "[CanCan::AccessDenied] #{exception.inspect}"

      if request.xhr?
        render :json => { :error => exception.message }
      else
        flash[:alert] = exception.message

        render :text => "Access Dennied"

      end
    end

  end
end
