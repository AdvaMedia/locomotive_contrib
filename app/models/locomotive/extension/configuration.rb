class Locomotive::Extension::Configuration
  include Mongoid::Document

  belongs_to :extension, :class_name => 'Locomotive::Extension'
end
