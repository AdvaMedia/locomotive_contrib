Locomotive::MainMenuCell.class_eval do

  delegate :current_user, :current_ability, :to => :parent_controller

  protected

  def build_list
    add :contents,  :url => pages_url
    add :extensions, :url => LocomotiveContrib::Engine.routes.url_helpers.extensions_path.gsub('//', '/') if current_ability.can?(:manage, LocomotiveContrib::Extension)
    add :settings,  :url => edit_current_site_url
  end
  
end
