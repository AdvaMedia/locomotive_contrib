FactoryGirl.define do
  factory :site_extension, :aliases => [:extension],  :class => LocomotiveContrib::Extension do
    meta_information
    configuration
  end
end
