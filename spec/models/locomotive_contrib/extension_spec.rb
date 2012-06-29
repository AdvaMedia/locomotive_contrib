require 'spec_helper'

describe LocomotiveContrib::Extension do
  before do
    @extension = create :extension
  end

  it "should be valid" do
    @extension.should be_valid
  end

end
