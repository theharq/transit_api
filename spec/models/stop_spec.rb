require 'spec_helper'

describe Stop, "Relations" do
  it { should have_many :stop_times }
end

describe Stop, "Class Methods" do
  describe ".near_to_location" do
    before(:each) do
      FactoryGirl.create(:stop, stop_lat: 11.002337, stop_lon: -74.809367)
      FactoryGirl.create(:stop, stop_lat: 48.856614, stop_lon: 2.3522219)
    end

    it "should return only one stop" do
      Stop.near_to_location(11.00353,-74.81143, 300).size.should == 1
    end
  end
end