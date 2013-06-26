module Api
  module V1
    class AgenciesController < ApplicationController

      def index
        render json: Agency.all
      end

      def show
        render json: Agency.find(params[:id])
      end
    end
  end
end