require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class TestBear < MiniTest::Test


  def setup
    @fish1= Fish.new("bob")
    @fish2= Fish.new("paul")
    @fish3= Fish.new("emma")
    @fishes = [@fish1, @fish2, @fish3]
    @river = River.new("Amazon", @fishes)

    @bear1 = Bear.new("Paddington", "Grizzly")
  end


  def test_bear_has_name
    assert_equal("Paddington", @bear1.name())
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear1.breed())
  end

  def test_bear_has_stomach__empty
    assert_equal(0, @bear1.stomach_count())
  end

def test_eat_from_river
  @bear1.eat_from_river(@river)
  assert_equal(1, @bear1.stomach_count())
  assert_equal(2, @river.population())
end

def test_roar
  assert_equal("Roar", @bear1.roar)
end



end
