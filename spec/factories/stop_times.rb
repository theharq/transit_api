# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stop_time do
    trip
    trip_str "8080-7440"
    arrival_time "2013-05-05 15:30:00"
    departure_time "2013-05-05 15:30:00"
    stop
    stop_str "555-555"
    stop_sequence 3
  end
end