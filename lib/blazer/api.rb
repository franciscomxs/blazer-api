require "blazer/api/engine"
require "blazer/api/configuration"
require "sequel"

module Blazer
  module Api
    class << self
      attr_accessor :configuration
      def configure
        self.configuration ||= Blazer::Api::Configuration.new
        yield(configuration)
      end
    end
  end
end
