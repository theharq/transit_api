class StopTime < ActiveRecord::Base
  belongs_to :trip
  belongs_to :stop
  attr_accessor :include_trip, :include_stop
end
