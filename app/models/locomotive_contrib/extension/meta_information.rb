class Extension::MetaInformation
  include Mongoid::Document

  ## fields ##
  field :slug

  belongs_to :extension

  validates :slug, presence: true
end
