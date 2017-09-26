class Bear

  def initialize(name)
    @name = name
    @stomach = []
  end

  def name()
    return @name
  end

  def tummy
    return @stomach
  end

  def add_fish(fish)
    @stomach.push(fish)
  end

  def take_fish(river)
    fish = river.fishies.shift
     if fish != nil
       @stomach.push(fish)
    end
  end

  def roar
    return "Roar!"
  end

  def food_count
    return @stomach.length
  end
end
