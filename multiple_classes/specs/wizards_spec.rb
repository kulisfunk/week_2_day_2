require 'minitest/autorun'
require 'minitest/rg'
require_relative '../wizards'
require_relative '../wand'

class TestWizards < MiniTest::Test
  def setup()
    @elder_wand = Wand.new("holly", "pheonix feather")
    @broken_wand = Wand.new("oak", "unicorn hair")
    
    @ron = Wizards.new("Ron Weasley", @broken_wand)
    @harry = Wizards.new("Harry Potter", @elder_wand)
  end

  def test_wizard_has_name()
    assert_equal("Ron Weasley", @ron.name)
  end

  def test_can_cast_spell()
    actual = @ron.cast_spell("stupor")
    assert_equal("stupor", actual)

  end

  def test_can_cast_stronger_spell()
    actual = @harry.cast_spell("expecto patronum")
    assert_equal("EXPECTO PATRONUM", actual)
  end




end
