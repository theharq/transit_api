require 'spec_helper'

describe Api::V1::CalendarsController, "Actions" do

  describe "on GET #index" do
    before(:each) do
      FactoryGirl.create(:calendar)
    end

    it "returns one as the count of calendars " do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["calendars"].size.should == 1
    end

    it "should return a json response with the calendars" do
      get :index
      parsed_body = JSON.parse(response.body)
      parsed_body["calendars"][0]["service_id"].should == "A"
    end
  end

  describe "on GET #show" do
    let(:calendar) { FactoryGirl.create(:calendar, service_id: "RUBY") }

    it "returns one as the count of calendars " do
      get :show, id: calendar.id
      parsed_body = JSON.parse(response.body)
      parsed_body["calendar"]["service_id"].should == "RUBY"
    end
  end

end