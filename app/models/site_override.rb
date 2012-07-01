Locomotive::Site.class_eval do
  has_many :extensions, :class_name => 'Locomotive::Extension'

  def add_extension(params)
    extension = self.extensions.build(params)
    extension.configuration = Locomotive::Extension::Configuration.new
    extension.save!
    extension
  end

end
