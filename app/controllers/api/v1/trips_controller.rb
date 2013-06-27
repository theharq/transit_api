module Api
  module V1
    class TripsController < ApplicationController

      def index
        render json: Trip.all
      end

      def show
        render json: Trip.find(params[:id])
      end
    end
  end
end