# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    route nil
    calendar nil
    service_id "MyString"
    trip_id "MyString"
    trip_headsign "MyString"
  end
end