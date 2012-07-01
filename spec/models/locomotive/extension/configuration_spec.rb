require 'spec_helper'

describe Locomotive::Extension::Configuration do
  before do
    @extension = create :extension
    @configuration = @extension.configuration
  end

  it "should be validat" do
    @configuration.should be_valid
  end

end
