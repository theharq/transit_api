# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :route do
    route_id "MyString"
    agency nil
    route_short_name "MyString"
    route_long_name "MyString"
    route_type 1
  end
end