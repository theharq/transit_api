# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :route do
    route_id "8080"
    agency
    route_short_name "B52"
    route_long_name "B52_Evergreen_Terrace"
    route_type 1
  end
end