class LocomotiveContrib::Extension
  include Mongoid::Document

  has_one :meta_information, :class_name => 'LocomotiveContrib::Extension::MetaInformation'
  has_one :configuration, :class_name => 'LocomotiveContrib::Extension::Configuration'

  validates :meta_information, :configuration, presence: true
end
