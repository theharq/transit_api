class RouteSerializer < ActiveModel::Serializer
  attributes :id, :route_id, :agency_id, :route_short_name, :route_long_name, :route_type
end
