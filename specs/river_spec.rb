require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Bubbles")
    @fish2 = Fish.new("Shadow")
    @fish3 = Fish.new("Blue")
    @fish4 = Fish.new("Casper")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3, @fish4])
  end

  def test_river_name
    assert_equal("Amazon", @river.river_name)
  end
  def test_all_fish
    assert_equal(4, @river.count_fish)
  end

  def test_eaten_fish
    @river.eaten_fish(@fish1)
    assert_equal(3, @river.count_fish)
  end
end
