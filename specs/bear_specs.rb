require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'
require_relative '../bear'

class TestBear < MiniTest::Test

  def setup()
    @fish1 = Fish.new("fred")
    @fish2 = Fish.new("felicia")
    @fish3 = Fish.new("finn")
    @river1 = River.new("yukon")
    @river2 = River.new("saskatchewan")
    @river3 = River.new("ottowa")
    @bear1 = Bear.new("billy")
    @bear2 = Bear.new("bob")
    @bear3 = Bear.new("brenda")
  end

  def test_bear_has_name()
    assert_equal("billy", @bear1.name)
  end

  def test_bear_stomach
    assert_equal([], @bear1.tummy)
  end

  def test_add_fish_to_stomach
    @bear1.add_fish(@fish1)

    assert_equal(1, @bear1.food_count)
  end

  def test_take_fish_from_river
    #add fish to river
    @river1.add_fish(@fish1)
    #take fish from river
    @bear1.take_fish(@river1)
    #check bears stomach
    assert_equal(1, @bear1.food_count)
    #check river count
    assert_equal(0, @river1.fish_count)
  end
  #
  def test_take_fish_from_full_river
    #add fish to river
    @river1.add_fish(@fish1)
    @river1.add_fish(@fish2)
    @river1.add_fish(@fish3)
    #take fish from river
    @bear1.take_fish(@river1)
    #check bears stomach
    assert_equal(1, @bear1.food_count)
    assert_equal(2, @river1.fish_count)
  end

  def test_take_fish_from_empty_river
    #take fish from river
    @bear1.take_fish(@river1)
    #check bears stomach
    assert_equal(0, @bear1.food_count)
    assert_equal(0, @river1.fish_count)
  end

  def test_roar
    expected = "Roar!"
    actual = @bear1.roar
    assert_equal(expected, actual)
  end

  def test_food_count
    expected = 0
    actual = @bear1.food_count
    assert_equal(expected, actual)
  end

end
