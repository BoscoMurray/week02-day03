require('minitest/autorun')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish01 = Fish.new("wanda")
  end

  def test_fish_name
    assert_equal("wanda", @fish01.name)
  end

end