module LocomotiveContrib
  class Ability
    include CanCan::Ability

    def initialize(account, site)
      @account, @site = account, site

      @membership = @site.memberships.where(:account_id => @account.id).first
    end
  end
end
