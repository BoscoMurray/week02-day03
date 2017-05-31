class Bear
  attr_reader :name
  attr_accessor :stomach

  def initialize(name, river)
    @name = name
    @stomach = []
    @river = river
  end

  def roar
    return "woof!"
  end

  def take_fish
    @stomach << @river.fishes.pop
  end

  def food_count
    @stomach.count
  end

end