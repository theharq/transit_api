# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :stop do
    stop_id "20666"
    stop_code "20666"
    stop_name "1601 NW 82 Avenue"
    stop_lat 1.5
    stop_lon 1.5
    stop_url "www.example.com"
    stop_type 1
  end
end