class StopSerializer < ActiveModel::Serializer
  attributes :id, :stop_id, :stop_code, :stop_name, :stop_lat, :stop_lon, :stop_type
end
