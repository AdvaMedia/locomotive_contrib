class LocomotiveContrib::Extension
  include Mongoid::Document

  field :slug

  has_one :configuration, :class_name => 'LocomotiveContrib::Extension::Configuration'
  belongs_to :site, :class_name => 'Locomotive::Site'

  validates :slug, :configuration, presence: true

  scope :web, ->{all}
end
