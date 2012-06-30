FactoryGirl.define do
  factory :site_extension, :aliases => [:extension],  :class => LocomotiveContrib::Extension do
    slug
    configuration
  end
end
