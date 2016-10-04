# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'CSV'
#
CSV.foreach('seed_csvs/markets.csv') do |csv_obj|
  Market.create(id: csv_obj[0].to_i, name: csv_obj[1], address: csv_obj[2], city: csv_obj[3], county: csv_obj[4], state: csv_obj[5], zip: csv_obj[6])
end
