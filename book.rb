class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person, book)
    @rentals << Rental.new(date, person, book)
  end

  def classroom=(classroom)
    @classroom = classroom classroom.students.push(self) unless classroom.students.include?(self)
  end
end
