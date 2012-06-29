require 'spec_helper'

describe LocomotiveContrib::Extension::MetaInformation do
  before do
    @extension = create :extension
    @meta_information = @extension.meta_information
  end

  it "should be valid" do
    @meta_information.should be_valid
  end

  it "should have slug field" do
    @meta_information.slug.should be_present
  end

  it "should have extension association" do
    @meta_information.extension.should be_present
  end
end
