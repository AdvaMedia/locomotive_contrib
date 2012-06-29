class LocomotiveContrib::Extension::Configuration
  include Mongoid::Document

  belongs_to :extension, :class_name => 'LocomotiveContrib::Extension'
end
