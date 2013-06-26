# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stop_time do
    trip nil
    trip_str "MyString"
    arrival_time "2013-05-05 21:34:02"
    departure_time "2013-05-05 21:34:02"
    stop nil
    stop_str "MyString"
    stop_sequence 1
  end
end