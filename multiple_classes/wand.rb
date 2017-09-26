class Wand
  def initialize(wood, core)
    @wood = wood
    @core = core
  end

  def wood()
    return @wood
  end

  def core()
    return @core
  end

  def cast_spell(spell)
    if (@wood == "holly" && @core == "pheonix feather")
      return spell.upcase()
    end
      return spell
  end
end
