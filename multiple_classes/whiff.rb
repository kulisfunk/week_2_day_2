class Whiff
  def initialize(wizards)
    @wizards = wizards
  end

  def cast_spell(spell)
    mass_spell = []

    for wizard in @wizards
    mass_spell << wizard.cast_spell(spell)
    end
    return mass_spell
  end
end
