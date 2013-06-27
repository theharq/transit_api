module Api
  module V1
    class StopsController < ApplicationController

      def index
        render json: Stop.all
      end

      def show
        render json: Stop.find(params[:id])
      end
    end
  end
end