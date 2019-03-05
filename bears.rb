class Bears

  attr_reader :bear_name, :bear_type

  def initialize(bear_name, bear_type)
    @bear_name = bear_name
    @bear_type = bear_type
    @bear_stomach = []
  end

  def count_stomach()
    return @bear_stomach.length()
  end

  def eat_fish(fish)
    return @bear_stomach.push(fish)
  end
  def roar()
    if (@bear_stomach.length > 0)
      return "Roar"
    else
      return "I'm hungry"
    end
  end
end
