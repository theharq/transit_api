require 'spec_helper'

describe Api::V1::StopTimesController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:stop_time)
    end

    it "returns one as the count of stop_times " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["stop_times"].size.should == 1
    end

    it "should return a json response with the stop_times" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["stop_times"][0]["trip_id"].should == "8080-7440"
    end
  end

  describe "on GET #show" do
    let(:stop_time) { FactoryGirl.create(:stop_time, trip_str: "9999-9999") }

    it "returns one as the count of stop_times " do
      get :show, id: stop_time.id
      parsed_body = JSON.parse(response.body)
      parsed_body["stop_time"]["trip_id"].should == "9999-9999"
    end
  end

end