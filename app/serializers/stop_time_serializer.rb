class StopTimeSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :trip_str, :arrival_time, :departure_time, :stop_id, :stop_sequence
end
