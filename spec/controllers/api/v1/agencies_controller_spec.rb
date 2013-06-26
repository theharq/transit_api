require 'spec_helper'

describe Api::V1::AgenciesController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:agency)
    end

    it "returns one as the count of agencies " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["agencies"].size.should == 1
    end

    it "should return a json response with the agencies" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["agencies"][0]["agency_name"].should == "Transmetro"
    end
  end

  describe "on GET #show" do
    let(:agency) { FactoryGirl.create(:agency, agency_name: "Sparta") }

    it "returns one as the count of agencies " do
      get :show, id: agency.id
      parsed_body = JSON.parse(response.body)
      parsed_body["agency"]["agency_name"].should == "Sparta"
    end
  end

end