require('minitest/autorun')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < MiniTest::Test

  def setup
    fish01 = Fish.new("salmon")
    fish02 = Fish.new("trout")
    fishes = [fish01, fish02]
    river01 = River.new("forth", fishes)
    @bear01 = Bear.new("yogi", river01)
  end

  def test_name
    assert_equal("yogi", @bear01.name)
  end

  def test_roar
    assert_equal("woof!", @bear01.roar)
  end

  def test_take_fish
    @bear01.take_fish
    @bear01.take_fish
    assert_equal("salmon", @bear01.stomach[1].name)
  end

  def test_food_count
    @bear01.take_fish
    assert_equal(1, @bear01.food_count)
  end

end