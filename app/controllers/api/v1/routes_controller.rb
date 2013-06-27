module Api
  module V1
    class RoutesController < ApplicationController

      def index
        render json: Route.all
      end

      def show
        render json: Route.find(params[:id])
      end
    end
  end
end