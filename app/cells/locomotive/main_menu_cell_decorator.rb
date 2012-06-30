Locomotive::MainMenuCell.class_eval do

  def build_list
    add :contents,  :url => pages_url
    add :extensions, :url => LocomotiveContrib::Engine.routes.url_helpers.extensions_path.gsub('//', '/')
    add :settings,  :url => edit_current_site_url
  end
  
end
