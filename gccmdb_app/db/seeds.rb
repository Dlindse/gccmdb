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
# #p sorted_country_payload
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






# ##
# ## ## seed Measures Table
# ##
# @start_count = Measure.all.count
# measure_payload = []
# measure_csv = CSV.read('lib/truth_csvs/Measure_ids.csv', headers: true)
# measure_csv.each{|row|
#   measure_payload << row.to_h.map{|k,v| [k.to_sym, v] }.to_h
# }

# #sorted_measure_payload = measure_payload.sort_by{|hsh| hsh[:name] }


# measure_payload.each{|hsh|
#   hsh.each{|k,v|
    
#     # replace country string with country id
#     if k == :country_id
#       @country = Country.where(country: v)[0]
#       unless @country == nil
#         hsh[k] = @country.id
#       end
#     end

#     # replace data source string with country id
#     if k == :data_source_id
#       @source = DataSource.where(source: v)[0]
#       unless @source == nil
#         hsh[k] = @source.id
#       end
#     end

#     # replace measure targets string with array of measure target ##ids##
#     if k == :measure_targets
#       if v == nil
#         hsh[k] = []
#       else
#         measure_strings = v.split(", ")
#         targets = []
#         measure_strings.each{|string|
#           if string.include?("/")
#             string.split("/").each{|s|

#               @target = MeasureTarget.where(target: s.strip)[0] #.gsub(" ","")
#                 # puts s
#                 targets << @target.id
#               }
#           else
#             @target = MeasureTarget.where(target: string.strip)[0]
#               # puts string
#               targets << @target.id
#           end
#           hsh[k] = targets
#         }
#       end
#     end
#   }
#   # p hsh
#   # puts ""
# }

# Measure.create(measure_payload)
# puts "#{Measure.all.count - @start_count} Measure records created"








