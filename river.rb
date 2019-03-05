class River
  attr_reader :river_name
  def initialize(river_name, all_fish)
    @river_name =  river_name
    @all_fish = all_fish
  end

  def count_fish
    return @all_fish.length
  end
  def eaten_fish(fish)
    index = @all_fish.index(fish)
    @all_fish.slice!(index, 1)
  end
end
