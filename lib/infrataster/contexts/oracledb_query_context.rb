# oracledb_query_context.rb
# coding: utf-8
require 'infrataster'
require 'oci8'

module Infrataster
  module Contexts
    class OracledbQueryContext < BaseContext
      def results
        options = {
          port: 1521, user: '', password: '', service_name: ''
        }
        if server.options[:oracledb]
          options = options.merge(server.options[:oracledb])
        end

        server.forward_port(options[:port]) do |address, new_port|
          conn = OCI8.new(
            options[:user], options[:password],
            "//#{address}:#{new_port}/#{options[:service_name]}"
          )
          cursor = conn.parse(resource.query)
          cursor.exec()

          rows = []
          while r = cursor.fetch_hash()
            rows.push(r)
          end
          cursor.close
          conn.logoff
          rows
        end
      end
    end
  end
end
