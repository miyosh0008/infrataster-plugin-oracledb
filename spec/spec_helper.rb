# spec_helper.rb
# coding: utf-8
require 'infrataster/rspec'
require 'infrataster-plugin-oracledb'

Infrataster::Server.define(
  :orcl,
  '192.168.56.101',
  oracledb: {user: 'system', password: 'oracle', service_name: 'orcl'},
)

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
