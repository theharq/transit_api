require 'spec_helper'

describe Api::V1::StopsController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:stop_time)
    end

    it "returns one as the count of stops " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["stops"].size.should == 1
    end

    it "should return a json response with the stops" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["stops"][0]["stop_name"].should == "1601 NW 82 Avenue"
    end

    it "should return stop_times if a parameter is sent" do
      get :index, include_stop_times: 'true'
      parsed_body = JSON.parse(response.body)
      parsed_body["stops"][0]["stop_times"].size.should == 1
    end
  end

  describe "on GET #show" do
    let(:stop) { FactoryGirl.create(:stop, stop_name: "1601 NW 100 Avenue") }

    it "returns one as the count of stops " do
      get :show, id: stop.id
      parsed_body = JSON.parse(response.body)
      parsed_body["stop"]["stop_name"].should == "1601 NW 100 Avenue"
    end
  end

end