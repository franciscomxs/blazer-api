module Blazer
  module Api
    class Configuration
      attr_accessor :authentication

      def db
        @db ||= Sequel.connect(ENV['BLAZER_DATABASE_URL'])
      end
    end
  end
end
