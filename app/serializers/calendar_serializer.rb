class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :service_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :start_date, :end_date
end
