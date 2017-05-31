require('minitest/autorun')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

  def setup
    fish01 = Fish.new("salmon")
    fish02 = Fish.new("trout")
    fish03 = Fish.new("perch")
    fishes = [fish01, fish02, fish03]
    @river01 = River.new("forth", fishes)
  end

  def test_fish_taken
    @river01.fish_taken
    assert_equal("trout", @river01.fishes[1].name)
  end

  def test_fish_count
    @river01.fish_taken
    @river01.fish_taken
    assert_equal(1, @river01.count)
  end

end