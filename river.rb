class River
  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_taken
    return "No fish left!" if @fishes.count == 0
    @fishes.pop
  end

  def count
    @fishes.count
  end

end