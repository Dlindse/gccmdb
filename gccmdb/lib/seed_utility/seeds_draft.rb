require 'csv'
##########################v SEEDS.RB v##########################


##
## ## Extract data from csvs for db seeding
## ## ## starts with a directory containing csvs
## ## ## these csvs should be titled same as rails Models you'll be scaffolding
## ## ## returns a hash wherein keys are table names, values are array of hashes where each hash is a row that will be seeded 
##

import = {}

# Loop through all files in spcified directory
Dir.foreach('/Users/attack/Desktop/DDH/gccmdb/truth_csvs'){|file|
  # filter files to loop only through .csvs
  if file.include?(".csv")
    # parse the csv with headers
    csv = CSV.read(file, headers: true )
    
    rows = []

    csv.each{|row|
      # convert each row to a hash that rails Model.create will accept & add it to rows array
      rows << row.to_h.map{|k,v| [k.to_sym, v] }.to_h
    }

    # add rows array to import hash
    # key will be file name minus ".csv" as a symbol
    # val will be array of hashes where each hash is a row
    import[file.gsub(".csv","").to_sym] = rows
  end
}

import.each{|k,v|
  puts "\n\n\n\n=== ===\n"
  p k
  v.each{|hsh|
    p hsh
  }
}


