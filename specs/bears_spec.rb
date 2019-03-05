require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../river.rb')


class BearsTest < MiniTest::Test

  def setup()
    @bears = Bears.new("Yogi", "Grizzly")
  end

  def test_bear_name()
    assert_equal("Yogi", @bears.bear_name())
  end

  def test_bear_type()
    assert_equal("Grizzly", @bears.bear_type())
  end

  def test_count_stomach()
    assert_equal(0, @bears.count_stomach())
  end

  def test_eat_fish()
    @bears.eat_fish(@fish1)
    assert_equal(1, @bears.count_stomach())
  end

  def test_bear_roar__full
    @bears.eat_fish(@fish1)
    assert_equal("Roar", @bears.roar())
  end
  def test_bear_roar__hungry
    assert_equal("I'm hungry", @bears.roar())
  end
end
