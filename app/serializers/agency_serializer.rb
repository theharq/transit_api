class AgencySerializer < ActiveModel::Serializer
  attributes :id, :agency_id, :agency_name, :agency_url, :agency_timezone
end
