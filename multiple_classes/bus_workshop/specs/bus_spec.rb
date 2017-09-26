require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus'
require_relative '../person'

class TestBus < MiniTest::Test

  def setup()
    @first_bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Bill Oddie", 102)

  end

  def test_drive()
    actual = @first_bus.drive()
    expected = ("Brum Brum")
    assert_equal(expected, actual)
  end

  def test_passenger_count()
    actual = @first_bus.passenger_count()
    expected = 0
    assert_equal(expected, actual)
  end

  def test_bus_pick_up()
    actual = @first_bus.bus_pick_up(@passenger1)
    expected = [@passenger1]
    assert_equal(expected, actual)
  end

  def test_bus_drop_off()
    actual = @first_bus.bus_drop_off(@passenger1)
    expected = []
    assert_equal(expected, actual)
  end

  def test_empty_bus()
    actual  = @first_bus.empty_bus()
    expected = nil
    assert_equal(expected, actual)
  end




end
