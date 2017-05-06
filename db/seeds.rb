# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



require 'csv'

file_read = File.binread('won2.csv')
file_read = file_read.force_encoding('utf-8')
assem_info = CSV.parse(file_read, headers: true)

assem_info.each do |assem|
  Assem.create(name: assem[0].to_s, precinct: assem[1].to_s, party: assem[2].to_s, elec_count: assem[3].to_s, email: assem[4].to_s, home_url: assem[5].to_s, call_number: assem[6].to_s, man_key: assem[7].to_s)
end

file_read = File.binread('law2.csv')
file_read = file_read.force_encoding('utf-8')
law_info = CSV.parse(file_read, headers: true)

law_info.each do |law|
  assem = Assem.where(man_key: law[3]).first
  Bill.create(law_number: law[0], kind: law[1], sub_name: law[2], assem_id: assem.id)
end