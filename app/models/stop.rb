class Stop < ActiveRecord::Base
  has_many :stop_times

  def self.search(params)
    stops = self.limit(20)
    stops = stops.limit(params[:limit]) if params[:limit].present?
    stops
  end
end
