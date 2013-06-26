# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar do
    service_id "MyString"
    monday false
    tuesday false
    wednesday false
    thursday false
    friday false
    saturday false
    sunday false
    start_date "2013-05-05"
    end_date "2013-05-05"
  end
end
