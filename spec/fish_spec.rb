require('minitest/autorun')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish01 = Fish.new("salmon")
  end

  def test_fish_name
    assert_equal("salmon", @fish01.name)
  end

end