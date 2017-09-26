require 'minitest/autorun'
require 'minitest/rg'
require_relative '../wand'

class TestWand < MiniTest::Test

  def setup()
    @elder_wand = Wand.new("holly", "pheonix feather")
  end

  def test_wand_wood()
    assert_equal("holly", @elder_wand.wood())

  end

  def test_wand_core()
    assert_equal("pheonix feather", @elder_wand.core())
  end


end
