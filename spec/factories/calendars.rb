# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar do
    service_id "A"
    monday true
    tuesday true
    wednesday true
    thursday true
    friday true
    saturday false
    sunday false
    start_date "2013-05-05"
    end_date "2013-05-05"
  end
end
