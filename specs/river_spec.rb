require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")



class TestRiver < MiniTest::Test

  def setup
    @fish1= Fish.new("bob")
    @fish2= Fish.new("paul")
    @fish3= Fish.new("emma")

    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fishes)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(@fishes, @river.fishes())
  end

  def test_river_fish_count
    assert_equal(3, @river.population())
  end

end
