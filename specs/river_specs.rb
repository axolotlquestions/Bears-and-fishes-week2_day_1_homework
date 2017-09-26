require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("fred")
    @fish2 = Fish.new("felicia")
    @fish3 = Fish.new("finn")
    @river1 = River.new("yukon")
    @river2 = River.new("saskatchewan")
    @river3 = River.new("ottowa")
  end

  def test_river_has_name
    expected = "yukon"
    actual = @river1.name
    assert_equal(expected, actual)
  end

  def test_river_has_fish
    expected = []
    actual = @river1.fishies
    assert_equal(expected, actual)
  end

  def test_add_fish_to_river
    @river1.add_fish(@fish1)

    expected = 1
    actual = @river1.fishies.length

    assert_equal(expected, actual)
  end

  def test_add_multiple_fish()
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    expected = 3
    actual = @river1.fishies.length

    assert_equal(expected, actual)
  end

  def test_remove_fish()
    @river1.add_fish(@fish1)
    @river1.remove_fish(@fish1)
    expected = 0
    actual = @river1.fish_count

    assert_equal(expected, actual)
  end

  def test_fish_count
    assert_equal(0, @river1.fish_count)
  end

end
