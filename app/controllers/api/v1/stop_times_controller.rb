module Api
  module V1
    class StopTimesController < ApplicationController

      def index
        render json: StopTime.all
      end

      def show
        render json: StopTime.find(params[:id])
      end
    end
  end
end