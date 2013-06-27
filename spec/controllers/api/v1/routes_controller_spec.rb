require 'spec_helper'

describe Api::V1::RoutesController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:route)
    end

    it "returns one as the count of routes " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["routes"].size.should == 1
    end

    it "should return a json response with the routes" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["routes"][0]["route_short_name"].should == "B52"
    end
  end

  describe "on GET #show" do
    let(:route) { FactoryGirl.create(:route, route_long_name: "B52_Evergreen_Terrace") }

    it "returns one as the count of routes " do
      get :show, id: route.id
      parsed_body = JSON.parse(response.body)
      parsed_body["route"]["route_long_name"].should == "B52_Evergreen_Terrace"
    end
  end

end