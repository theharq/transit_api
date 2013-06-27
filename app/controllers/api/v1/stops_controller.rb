module Api
  module V1
    class StopsController < ApplicationController

      def index
        render json: Stop.search(stop_params)
      end

      def show
        render json: Stop.find(params[:id])
      end


      private

      def stop_params
        params.permit(:limit, :latitude, :longitude, :distance, :from, :include_stop_times, :stop_time_limit)
      end
    end
  end
end