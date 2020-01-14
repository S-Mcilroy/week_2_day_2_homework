require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Bear.rb")
require_relative("../River.rb")
require_relative("../Fish.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
  end

  def test_get_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_get_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_take_fish
    river = River.new("Amazon")
    fish1 = Fish.new("Skippy")
    fish2 = Fish.new("Nemo")
    fish3 = Fish.new("Dory")
    river.add_fish(fish1)
    river.add_fish(fish2)
    river.add_fish(fish3)
    @bear.take_fish(river)
    assert_equal(1, @bear.food_count)
    assert_equal(2, river.fish_count)
  end

  def test_roar
    assert_equal("ROAR!!", @bear.roar)
  end

end
