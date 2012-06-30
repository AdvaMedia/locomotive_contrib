require 'spec_helper'

describe LocomotiveContrib::ExtensionsManager do

  before do
    @manager = LocomotiveContrib::ExtensionsManager.instance
  end

  it "should be singleton" do
    @manager.should be_present
  end

  it "should have list of extensions" do
    @manager.extensions.should be_present
  end

  it "should define new extensions by dsl" do
    @manager = LocomotiveContrib.manager
    -> {
      @manager.define do
        extension :test_extension
      end
    }.should change(@manager.extensions, :count).by(1)
  end
  
end
