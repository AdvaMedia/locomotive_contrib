module LocomotiveContrib
  class Ability
    include CanCan::Ability

    def initialize(account, site)
      @account, @site = account, site

      @membership = @site.memberships.where(:account_id => @account.id).first

      return false if @membership.blank?


      if @membership.admin?
        setup_admin_permissions!
      else
        setup_default_permissions!
      end
    end

    def setup_default_permissions!
      cannot :manage, :all
    end

    def setup_admin_permissions!
      can :manage, :all
    end
  end
end
