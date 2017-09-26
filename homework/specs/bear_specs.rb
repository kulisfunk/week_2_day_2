require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear'
require_relative '../fish'
require_relative '../river'

class TestBear < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Yogi")
    @river1 = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Jaws")
    @fish3 = Fish.new("Moby Dick")
  end

  def test_bear_name()
    actual = @bear1.bear_name()
    expected = "Yogi"
    assert_equal(expected, actual)
  end

  def test_roar()
    actual = @bear1.roar()
    expected = "Roaaar"
    assert_equal(expected, actual)
  end

  def test_count_food()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    @bear1.catch_fish(@river1, @fish1)
    @bear1.catch_fish(@river1, @fish2)
    @bear1.catch_fish(@river1, @fish3)
    actual = @bear1.count_food()
    expected = 3
    assert_equal(expected, actual)
  end

  def test_catch_fish()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    actual = @bear1.catch_fish(@river1,@fish1)
    expected = 1
    assert_equal(expected, actual)
    assert_equal(2, @river1.count_fish())
  end



end
