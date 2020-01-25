# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'csv'

# #
# # ## seed Countries Table
# #
# @start_count = Country.all.count
# country_payload = []
# country_csv = CSV.read('lib/truth_csvs/Country.csv', headers: true)
# country_csv.each{|row|
#   country_payload << row.to_h.map{|k,v| [k.to_sym, v] }.to_h
# }

# sorted_country_payload = country_payload.sort_by{|hsh| hsh[:country] }
# p sorted_country_payload
# Country.create(sorted_country_payload)
# puts "#{Country.all.count - @start_count} Country records created"






# ##
# ## ## seed DataSources Table
# ##
# @start_count = DataSource.all.count
# data_source_payload = []
# data_source_csv = CSV.read('lib/truth_csvs/DataSource.csv', headers: true)
# data_source_csv.each{|row|
#   data_source_payload << row.to_h.map{|k,v| [k.to_sym, v] }.to_h
# }

# sorted_data_source_payload = data_source_payload.sort_by{|hsh| hsh[:source] }
# #p sorted_data_source_payload
# DataSource.create(sorted_data_source_payload)
# puts "#{DataSource.all.count - @start_count} DataSource records created"






# ##
# ## ## seed MeasureTargets Table
# ##
# @start_count = MeasureTarget.all.count
# measure_target_payload = []
# measure_target_csv = CSV.read('lib/truth_csvs/MeasureTarget.csv', headers: true)
# measure_target_csv.each{|row|
#   measure_target_payload << row.to_h.map{|k,v| [k.to_sym, v] }.to_h
# }

# sorted_measure_target_payload = measure_target_payload.sort_by{|hsh| hsh[:target] }
# # 
# ## verify uniqueness
# #
# # p sorted_measure_target_payload
# # p sorted_measure_target_payload.map{|hsh| hsh[:target] }.count
# # p sorted_measure_target_payload.map{|hsh| hsh[:target] }.uniq.count
# # p sorted_measure_target_payload.map{|hsh| hsh[:target] }.detect{ |e| sorted_measure_target_payload.map{|hsh| hsh[:target] }.count(e) > 1 }
# MeasureTarget.create(sorted_measure_target_payload)
# puts "#{MeasureTarget.all.count - @start_count} MeasureTarget records created"






##
## ## seed Measures Table
##









