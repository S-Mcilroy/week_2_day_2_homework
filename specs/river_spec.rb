require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../River.rb")
require_relative("../Fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_get_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river
    fish1 = Fish.new("Skippy")
    fish2 = Fish.new("Nemo")
    fish3 = Fish.new("Dory")
    @river.add_fish(fish1)
    @river.add_fish(fish2)
    @river.add_fish(fish3)
    assert_equal(3, @river.fish_count)
  end

def test_remove_fish
  fish1 = Fish.new("Skippy")
  fish2 = Fish.new("Nemo")
  fish3 = Fish.new("Dory")
  @river.add_fish(fish1)
  @river.add_fish(fish2)
  @river.add_fish(fish3)
  @river.remove_fish
  assert_equal(2, @river.fish_count)
end

end
