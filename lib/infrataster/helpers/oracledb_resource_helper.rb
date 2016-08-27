# oracledb_resource_helper.rb
# coding: utf-8
require 'rspec'
require 'infrataster/resources'

module Infrataster
  module Helpers
    module ResourceHelper
      def oracledb_query(*args)
        Resources::OracledbQueryResource.new(*args)
      end
    end
  end
end
