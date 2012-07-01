FactoryGirl.define do
  sequence :slug do |n|
    "extension-#{n}".to_sym
  end
end
