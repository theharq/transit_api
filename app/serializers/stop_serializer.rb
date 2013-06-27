class StopSerializer < ActiveModel::Serializer
  attributes :id, :stop_id, :stop_code, :stop_name, :stop_lat, :stop_lon, :stop_type
  has_many :stop_times


  def include_stop_times?
    object.include_stop_times
  end

  def stop_times
    stop_times = object.stop_times.order("departure_time ASC")
    stop_times = stop_times.where("departure_time > ?", Time.now.to_s) if object.from_now
    stop_times = stop_times.limit(object.stop_time_limit) if object.stop_time_limit.present?
    stop_times
  end

end