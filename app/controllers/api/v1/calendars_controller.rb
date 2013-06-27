module Api
  module V1
    class CalendarsController < ApplicationController

      def index
        render json: Calendar.all
      end

      def show
        render json: Calendar.find(params[:id])
      end
    end
  end
end