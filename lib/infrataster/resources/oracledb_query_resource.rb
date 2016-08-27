# oracledb_query_resource.rb
# coding: utf-8
require 'infrataster'

module Infrataster
  module Resources
    class OracledbQueryResource < BaseResource
      Error = Class.new(StandardError)

      attr_reader :query

      def initialize(query)
        @query = query
      end

      def to_s
        "oracledb_query '#{@query}'"
      end
    end
  end
end
