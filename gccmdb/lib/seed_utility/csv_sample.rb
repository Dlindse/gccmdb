require 'csv'


puts "enter file path to a .csv file"
file_path = gets.chomp

headers = CSV.read(file_path, headers: true ).headers

payload = []
headers.count.times do |i|
  col_data = []
  CSV.foreach(file_path) {|row| col_data << row[i]}
  sample = col_data[1..-1].reject{|value| value.to_s.empty? }.sample
  
  if sample == nil
    payload << [headers[i],"!! NO VALUES IN THIS COLUMN !!"]
    puts "#{i+1} of #{headers.count} columns processed..."
  else
    payload << [headers[i],sample]
    puts "#{i+1} of #{headers.count} columns processed..."
  end
end

full_samples = []
empty_samples = []
payload.each{|ar|
  if ar[1] == "!! NO VALUES IN THIS COLUMN !!"
    empty_samples << ar
  else
    full_samples << ar
  end
}



puts "\n\n\n\n\n\n\n\n\n\n\n\n***\n******\n*********\n************\n\n\t~>COLUMNS WITH NO DATA<~"
empty_samples.each{|ar|
  p ar
  puts
}
puts "***\n******\n*********\n************\n\n\t~>COLUMNS WITH DATA<~"
full_samples.each{|ar|
  p ar
  puts
}