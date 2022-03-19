# frozen_string_literal: true

module Api
  module V1
    class RecordsController < ApplicationController
      def index
        @records = Record.all
        render json: @records
      end
    end
  end
end
