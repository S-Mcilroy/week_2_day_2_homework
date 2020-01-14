class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    return @stomach.count
  end

  def take_fish(river)
    fish_taken = river.fish.first
    @stomach.push(fish_taken)
    river.remove_fish
  end

  def roar
    return "ROAR!!"
  end

end
