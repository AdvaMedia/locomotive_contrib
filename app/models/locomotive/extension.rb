class Locomotive::Extension
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :slug

  has_one :configuration, :class_name => 'Locomotive::Extension::Configuration'
  belongs_to :site, :class_name => 'Locomotive::Site'

  validates :slug, :configuration, presence: true
  validates_uniqueness_of :slug, :scope => [:site]

  scope :web, ->{all}

  def name
    ::I18n.t(self.slug, :scope => "locomotive_contrib.extensions")
  end
end
