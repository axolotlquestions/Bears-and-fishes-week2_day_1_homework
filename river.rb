class River

  def initialize(name)
    @name = name
    @fishies = []
  end

  def name()
    return @name
  end

  def fishies()
    return @fishies
  end

  def add_fish(fish)
    @fishies.push(fish)
  end

  def remove_fish(fish)
    @fishies.delete(fish)
  end

  def fish_count
    return @fishies.length
  end

end
