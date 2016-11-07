require ('minitest/autorun')
require ('minitest/rg')
require_relative('car')
require_relative('person')

class TestCar < MiniTest::Test

  def setup
    @person1 = Person.new('Gordon', 90)
    @person2 = Person.new('Pepper', 22)
    @person3 = Person.new('Santa', 1001)

    @my_car = Car.new('Grey', 'Toyota', 100, 0)

  end

  def test_fuel_level
    assert_equal(100, @my_car.fuel())
  end

  def test_accelerate
    @my_car.accelerate
    assert_equal(95, @my_car.fuel())
    assert_equal(10, @my_car.speed())
  end

  def test_brake
    @my_car.brake
    assert_equal(0, @my_car.speed())
  end

end