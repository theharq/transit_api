require "csv"

desc "Imports GTFS to DB"
task :import_gtfs => :environment do
    tmp_dir = "#{Rails.root}/public/gtfs/"

    puts "DESTROYING AGENCIES"
    Agency.destroy_all

    puts "IMPORTING AGENCIES"
    CSV.parse(open(File.join(tmp_dir, 'agency.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      Agency.create!(agency_id: row[0], agency_name: row[1], agency_timezone: row[3], agency_url: row[2])
    end

    puts "DESTROYING CALENDARS"
    Calendar.destroy_all

    puts "IMPORTING CALENDARS"
    CSV.parse(open(File.join(tmp_dir, 'calendar.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      Calendar.create!(service_id: row[0],monday: row[1],tuesday: row[2],wednesday: row[3],thursday: row[4],friday: row[5],saturday: row[6],sunday: row[7],start_date: Date.parse(row[8]),end_date: Date.parse(row[9]))
    end

    puts "DESTROYING STOPS"
    Stop.destroy_all

    puts "IMPORTING STOPS"
    CSV.parse(open(File.join(tmp_dir, 'stops.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      Stop.create!(stop_id: row[0],stop_code: row[1],stop_name: row[2],stop_lat: row[3],stop_lon: row[4],stop_url: row[5],stop_type: row[6])
    end

    puts "DESTROYING ROUTES"
    Route.destroy_all

    puts "IMPORTING ROUTES"
    CSV.parse(open(File.join(tmp_dir, 'routes.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      r = Route.new(route_id: row[0],route_short_name: row[2],route_long_name: row[3],route_type: row[4])
      r.agency = Agency.where(agency_id: row[1]).first
      r.save!
    end

    puts "DESTROYING TRIPS"
    Trip.destroy_all

    puts "IMPORTING TRIPS"
    CSV.parse(open(File.join(tmp_dir, 'trips.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      t = Trip.new(route_str: row[0],service_id: row[1],trip_id: row[2],trip_headsign: row[3])
      t.route = Route.where(route_id: row[0]).first
      t.calendar = Calendar.where(service_id: row[1]).first
      t.save!
    end

    puts "DESTROYING STOP TIMES"
    StopTime.destroy_all

    puts "IMPORTING STOP TIMES"
    CSV.parse(open(File.join(tmp_dir, 'stop_times.txt'), 'r:bom|utf-8'), :headers => true) do |row|
      t = StopTime.new(trip_str: row[0],arrival_time: row[1],departure_time: row[2],stop_str: row[3],stop_sequence: row[4])
      t.trip = Trip.where(trip_id: row[0]).first
      t.stop = Stop.where(stop_id: row[3]).first
      t.save!
    end

  puts "Finished Import of GTFS data!"
end