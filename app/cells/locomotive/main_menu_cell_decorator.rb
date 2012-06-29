Locomotive::MainMenuCell.class_eval do

  def build_list
    add :contents,  :url => pages_url
    add :extensions, :url => "#"
    add :settings,  :url => edit_current_site_url
  end
  
end
