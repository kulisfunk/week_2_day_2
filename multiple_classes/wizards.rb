class Wizards
  def initialize(name, wand)
    @name = name
    @wand = wand
  end

  def name()
    return @name
  end

  def cast_spell(spell)
    return @wand.cast_spell(spell)
  end
end
