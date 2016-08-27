# oracledb_query_spec.rb
# coding: utf-8
require 'spec_helper'

describe server(:orcl) do
  describe oracledb_query('select name,display_value from v$parameter') do
    # check db_block_size
    it "initialization parameter 'db_block_size' should equal 8192" do
      row = results.find { |r| r['NAME'] == 'db_block_size' }
      expect(row['DISPLAY_VALUE'].to_i).to eq 8192
    end
  end
end
