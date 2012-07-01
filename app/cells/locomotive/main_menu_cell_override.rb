Locomotive::MainMenuCell.class_eval do

  delegate :current_user, :current_ability, :to => :parent_controller

  protected

  def build_list
    add :contents,  :url => pages_url
    add :extensions, :url => extensions_path if current_ability.can?(:manage, Locomotive::Extension)
    add :settings,  :url => edit_current_site_url
  end
  
end
