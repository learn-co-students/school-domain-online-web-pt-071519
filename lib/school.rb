
class School

   attr_reader :name #why isn't grade here?

  def initialize(name) #why isn't grade here?
    @name = name
    @roster = {}
  end

  def roster #why do you need a reader method for this?
    @roster
  end

  def add_student(name, grade)
    if
      @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.each do |grade, students|
        students.sort!
    end
  end

end
