require 'minitest/autorun'
require 'minitest/rg'
require_relative '../whiff'
require_relative '../wizards'
require_relative '../wand'

class TestWhiff < MiniTest::Test

  def setup()
    @elder_wand = Wand.new("holly", "pheonix feather")
    @elm_wand = Wand.new("elm", "dragon heartstring")

    @harry = Wizards.new("Harry Potter", @elder_wand)
    @hermione = Wizards.new("Hermione Granger", @elm_wand)

    @whiff = Whiff.new([@harry, @hermione])
  end

 def test_whiff_can_cast_spells()
   actual = @whiff.cast_spell("stupor")
   expected = ["STUPOR", "stupor"]
   assert_equal(expected, actual)
 end



end
