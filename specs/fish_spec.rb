require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")


class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("bob")
  end

  def test_fish_name
    assert_equal("bob", @fish.name)
  end

end
