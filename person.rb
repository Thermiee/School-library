require_relative './decorator'

class Person < Nameable
  attr_accessor :name, :age, :rentals, :id

  def initialize(age, name = 'Unknown', parent_permission: true, id: nil)
    super()
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
# # Create Objects
# person_one = Person.new(27, 'Isma')
# person_two = Person.new(4, 'Manel', parent_permission: false)
# person_three = Person.new(20, 'Sarah')
# person_four = Person.new(15, 'Sissa', parent_permission: false)

# # Call Methods
# puts "person_one: #{person_one.can_use_services?}"
# puts "person_two: #{person_two.can_use_services?}"
# puts "person_three: #{person_three.can_use_services?}"
# puts "person_four: #{person_four.can_use_services?}"
