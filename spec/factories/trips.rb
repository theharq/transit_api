# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    route
    calendar
    service_id "A"
    route_str "9999"
    trip_id "999-000"
    trip_headsign "X"
  end
end