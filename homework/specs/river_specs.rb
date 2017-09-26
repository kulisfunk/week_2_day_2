require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river'
require_relative '../fish'
require_relative '../bear'

class TestRiver < MiniTest::Test

  def setup()
    @river1 = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Jaws")
    @fish3 = Fish.new("Moby Dick")
  end

  def test_river_name()
    actual = @river1.river_name()
    expected = "Amazon"
    assert_equal(expected, actual)
  end

  def test_add_fish()
    actual = @river1.add_fish(@fish1)
    expected = 1
    assert_equal(expected, actual)
  end

  def test_count_fish()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    actual = @river1.count_fish()
    expected = 3
    assert_equal(3,actual)
  end

  def test_remove_fish()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    actual = @river1.remove_fish(@fish1)
    expected = 2
    assert_equal(2,actual)
  end




end
