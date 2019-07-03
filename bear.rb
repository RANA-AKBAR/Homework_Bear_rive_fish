class Bear

attr_reader :name, :breed

def initialize(name, breed)
  @name = name
  @breed = breed
  @stomach = []
end



def eat_from_river(river)
  return @stomach << river.fishes.delete_at(0)
end


def roar
  return "Roar"
end

def stomach_count
  return @stomach.count()
end




end
