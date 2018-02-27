module Blazer
  module Api
    class ApplicationController < ActionController::Base
      include ActionController::HttpAuthentication::Token::ControllerMethods

      protect_from_forgery with: :null_session
      before_action :authenticate

      delegate :db, :authentication, to: :configuration

      def authenticate
        authenticate_with_http_token do |token, options|
          authentication.call(token, options)
        end || render_unauthorized
      end

      private

      def render_unauthorized
        self.headers["WWW-Authenticate"] = "Token realm=\"Application\""
        render json: { error: 'Bad credentials' }, status: :unauthorized
      end

      def configuration
        Blazer::Api.configuration
      end
    end
  end
end
