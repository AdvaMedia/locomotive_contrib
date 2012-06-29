class Extension
  include Mongoid::Document

  has_one :meta_information, :class_name => 'Extension::MetaInformation'
  has_one :configuration, :class_name => 'Extension::Configuration'

  validates :meta_information, :configuration, presence: true
end
