require 'minitest/autorun'
require 'minitest/rg'
require_relative '../person'
require_relative '..bus'

class TestPerson < MiniTest::Test

  def setup()
    @first_person = Person.new("Bill Oddie", 102)
  end


end
