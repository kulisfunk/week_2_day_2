class River
  def initialize(name)
    @fishes = []
    @river = name
  end

  def river_name()
    return @river
  end

  def add_fish(fish)
    @fishes << fish
    return count_fish()
  end

  def count_fish()
    return @fishes.length
  end

  def remove_fish(fish)
    @fishes.delete(fish)
    return count_fish
  end




end
