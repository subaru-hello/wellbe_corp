# frozen_string_literal: true

module Api
  module V1
    class CompetitionsController < ApplicationController
      def new; end

      def index
        @competitions = Competition.all
        render json: @competitions
      end

      def create; end
    end
  end
end
