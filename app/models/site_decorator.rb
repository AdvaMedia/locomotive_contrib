Locomotive::Site.class_eval do
  has_many :extensions, :class_name => 'LocomotiveContrib::Extension'
end
