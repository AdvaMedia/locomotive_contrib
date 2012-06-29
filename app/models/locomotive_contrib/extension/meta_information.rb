class LocomotiveContrib::Extension::MetaInformation
  include Mongoid::Document

  ## fields ##
  field :slug

  belongs_to :extension, :class_name => 'LocomotiveContrib::Extension'

  validates :slug, presence: true
end
