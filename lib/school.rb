require "pry"

class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)

    if @roster.include?(grade)
      @roster[grade] << student
    else
    @roster[grade] = []
    @roster[grade] << student
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |key, value|
      value.sort!
    end
    @roster.sort.to_h
  end

end
