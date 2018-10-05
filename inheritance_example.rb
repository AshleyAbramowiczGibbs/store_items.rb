class Vehicle

  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def accelerate
    @speed += 10
  end
end

class Car < Vehicle
  
  def initialize(input_hash)
  super
    @fuel = input_hash [:fuel]
    @make = input_hash [:make]
    @model = input_hash [:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  
  def initialize(input_hash)
  super
    @type = input_hash [:type]
    @weight = input_hash [:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike1 = Bike.new({type: "roadbike", weight: 40})
bike1.ring_bell

car1 = Car.new({fuel: "regular", make: "jeep", model: "wrangler"})
car1.honk_horn
p car1
p bike1


