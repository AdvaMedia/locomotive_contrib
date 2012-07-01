FactoryGirl.define do
  factory :site_extension, :aliases => [:extension],  :class => Locomotive::Extension do
    slug
    configuration
  end
end
