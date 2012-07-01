require 'spec_helper'

describe Locomotive::Extension do
  before do
    @extension = create :extension
  end

  it "should be valid" do
    @extension.should be_valid
  end

  it "should not add extension with some slug" do
    ->{
      create :extension, :slug => @extension.slug, :site => @extension.site
    }.should raise_error
  end

end
