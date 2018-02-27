module Blazer
  module Api
    class QueriesController < ApplicationController
      def show
        hashes = Blazer::Api.configuration.db[
          Blazer::Query.find(params[:id]).statement
        ].all

        render json: JSON.generate(hashes), status: 200
      end
    end
  end
end
