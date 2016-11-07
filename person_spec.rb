require ('minitest/autorun')
require ('minitest/rg')
require_relative('person')

class TestPerson < MiniTest::Test

def setup
 @person1 = Person.new('Gordon', 90)
 @person2 = Person.new('Pepper', 22)
 @person3 = Person.new('Santa', 1001)

end

  def test_person_has_name
    assert_equal('Gordon', @person1.name())
  end

  def test_person_has_age
    assert_equal(1001, @person3.age())
  end
end