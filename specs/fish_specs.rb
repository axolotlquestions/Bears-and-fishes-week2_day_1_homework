require 'minitest/autorun'
require 'minitest/rg'

require_relative '../fish'

class TestFish < MiniTest::Test

  def setup()
    @fish1 = Fish.new("fred")
    @fish2 = Fish.new("felicia")
    @fish3 = Fish.new("finn")
  end

  def test_fish_has_name
    expected = "fred"
    actual = @fish1.name
    assert_equal(expected, actual)
  end

end
