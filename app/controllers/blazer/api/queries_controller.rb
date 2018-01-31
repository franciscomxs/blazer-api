module Blazer
  module Api
    class QueriesController < ApplicationController
      def show
        hashes = Blazer::Api.configuration.db[
          Blazer::Query.find(params[:id]).statement
        ].all

        render json: JSON.generate(hashes)
      end
    end
  end
end
