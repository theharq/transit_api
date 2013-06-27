require 'spec_helper'

describe Api::V1::TripsController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:trip)
    end

    it "returns one as the count of trips " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["trips"].size.should == 1
    end

    it "should return a json response with the trips" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["trips"][0]["service_id"].should == "A"
    end
  end

  describe "on GET #show" do
    let(:trip) { FactoryGirl.create(:trip, service_id: "X3") }

    it "returns one as the count of trips " do
      get :show, id: trip.id
      parsed_body = JSON.parse(response.body)
      parsed_body["trip"]["service_id"].should == "X3"
    end
  end

end