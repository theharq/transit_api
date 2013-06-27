class TripSerializer < ActiveModel::Serializer
  attributes :id, :route_id, :service_id, :trip_id, :trip_headsign
end
