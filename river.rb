class River

  attr_accessor :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes || []
  end

  def population
    return @fishes.count()
  end


end
