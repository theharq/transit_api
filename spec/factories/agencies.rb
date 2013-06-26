# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agency do
    agency_id "TM"
    agency_name "Transmetro"
    agency_url "http://www.transmetro.gov.co"
    agency_timezone "America/Bogota"
  end
end
