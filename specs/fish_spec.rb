require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../Fish.rb")

class FishTest < MiniTest::Test

def setup
  @fish = Fish.new("Skippy")
end

def test_get_fish
  assert_equal("Skippy", @fish.name)
end

end
