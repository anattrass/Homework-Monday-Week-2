class Car

  attr_accessor :colour, :model
  attr_reader :fuel, :speed

  def initialize(colour, model, fuel, speed)
    @colour = colour
    @model = model
    @fuel = fuel
    @speed = speed

  end

  def accelerate
    @speed += 10
    @fuel -=5
  end

  def brake
    if @speed != 0
      @speed -=10
    end
  end

end