class Bear
  def initialize(name)
    @stomach = []
    @bear = name
  end

  def bear_name()
    return @bear
  end

  def roar()
    return "Roaaar"
  end

  def eat_fish(fish)
    @stomach << fish
    return count_food()
  end

  def count_food()
    return @stomach.length
  end

  def catch_fish(river, fish)
    eat_fish(fish)
    river.remove_fish(fish)
    return count_food()
  end



end
