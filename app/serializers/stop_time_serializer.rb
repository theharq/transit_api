class StopTimeSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :arrival_time, :departure_time, :stop_id, :stop_sequence
  has_one :stop
  has_one :trip

  def stop_id
    object.stop_str
  end

  def trip_id
    object.trip_str
  end

  def departure_time
    Time.parse(object.departure_time.to_s).strftime("%H:%M:%S")
  end

  def arrival_time
    Time.parse(object.arrival_time.to_s).strftime("%H:%M:%S")
  end

  def include_stop?
    object.include_stop
  end

end
