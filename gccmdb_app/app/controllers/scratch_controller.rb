class ScratchController < ApplicationController
  def back
  end
  
  def homepage
  end

  def one
  end

  def summaries
    @models = []
    Dir.foreach("app/models") { |model_path|
      puts model_path
      if model_path.include?(".rb")
        next if model_path == "application_record.rb"
        @models << model_path.gsub(".rb","").gsub("_"," ").split(" ").map{|string| string.capitalize }.join("").pluralize
      end
    }


    
  end
end
