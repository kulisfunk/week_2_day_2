require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish'

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Nemo")
  end

  def test_fish_name()
    expected = ("Nemo")
    actual = @fish1.fish_name()
    assert_equal(expected, actual)
  end



end
