class FontScale

  def self.scale(collection)
    @count = collection.count
    if @count < 80
      # small font scale
      @scale = 
      arr = [@count,@scale]
    elsif @count >= 80 and @count < 200
      arr = [@count,@count]
    else
      # large font scale
      @scale = 
      arr = [@count,@scale]
    end

    return arr
  end

end