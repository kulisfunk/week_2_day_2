require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bus'
require_relative '../person'

class TestBus < MiniTest::Test

  def setup()
    @first_bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Bill Oddie", 102)
    @passenger2 = Person.new("Charlie Chook", 55)

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
    @first_bus.bus_pick_up(@passenger1)
    @first_bus.bus_pick_up(@passenger2)
    actual = @first_bus.bus_drop_off(@passenger1)
    expected = [@passenger2]
    assert_equal(expected, actual)
  end

  def test_empty_bus()
    actual  = @first_bus.empty_bus()
    expected = nil
    assert_equal(expected, actual)
  end




end
