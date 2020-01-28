require 'csv'
##
## ## Extract headers from csvs for scaffolding
## ## Output does not recommend data-types so all columns would be strings if copy/pasted without ammendment
##

# Loop through all files in spcified directory
Dir.foreach('/Users/attack/Desktop/DDH/gccmdb/truth_csvs'){|file|
  # filter files to loop only through .csvs
  if file.include?(".csv")
    headers = CSV.read(file, headers: true ).headers
    puts headers.unshift("rails g scaffold #{file.gsub('.csv','')}").join(" ")
    puts 
  end
}