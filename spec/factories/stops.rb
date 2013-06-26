# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stop do
    stop_id "MyString"
    stop_code "MyString"
    stop_name "MyString"
    stop_lat 1.5
    stop_lon 1.5
    stop_url "MyString"
    stop_type 1
  end
end