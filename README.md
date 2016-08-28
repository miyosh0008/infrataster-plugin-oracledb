# infrataster-plugin-oracledb

[![Gem Version](https://badge.fury.io/rb/infrataster-plugin-oracledb.svg)](https://badge.fury.io/rb/infrataster-plugin-oracledb)

Oracle Database plugin for [Infrataster](https://github.com/ryotarai/infrataster)

## Installation

Requires:
- [Oracle Instant Client](http://www.oracle.com/technetwork/database/features/instant-client/index.html)
- [ruby-oci8](https://github.com/kubo/ruby-oci8)  

Add this line to your Gemfile:

    gem 'infrataster-plugin-oracledb'

And then add the following line to your spec\_helper.rb:

    require 'infrataster-plugin-oracledb'

## Usage

```ruby
describe server(:orcl) do
  describe oracledb_query('select name,display_value from v$parameter') do
    # check db_block_size
    it "initialization parameter 'db_block_size' should equal 8192" do
      row = results.find { |r| r['NAME'] == 'db_block_size' }
      expect(row['DISPLAY_VALUE'].to_i).to eq 8192
    end
  end
end
```

You can specify database connection and credential details by options passed to `Infrataster::Server.define`:

```ruby
Infrataster::Server.define(
  :orcl,
  '192.168.56.101',
  oracledb: {user: 'system', password: 'oracle', service_name: 'orcl'},
)
```
