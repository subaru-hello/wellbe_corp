# frozen_string_literal: true

module Api
  module V1
    class CruesController < ApplicationController
      def new; end

      def index
        @crues = Crue.all
        render json: @crues
      end
    end
  end
end
