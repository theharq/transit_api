class Stop < ActiveRecord::Base
  has_many :stop_times
  attr_accessor :include_stop_times, :from_now, :stop_time_limit

  def self.search(params)
    stops = self.limit(20)
    stops = stops.limit(params[:limit]) if params[:limit].present?

    if params[:latitude].present? && params[:longitude].present?
      stops = stops.near_to_location(params[:latitude], params[:longitude], params[:distance].present? ? params[:distance].to_i : 300 )
    end


    stops.map {|s| s.from_now = true} if params[:from] == 'now'
    stops.map {|s| s.stop_time_limit = params[:stop_time_limit]} if params[:stop_time_limit].present?
    stops.map {|s| s.include_stop_times = true} if params[:include_stop_times] == 'true'

    stops

  end

  def self.near_to_location(latitude,longitude,distance)


    self.select{ |stop| Utility.haversine(stop.stop_lat, stop.stop_lon, latitude.to_f, longitude.to_f) <= distance }
  end

end
