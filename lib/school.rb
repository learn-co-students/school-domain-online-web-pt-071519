require 'pry'

class School
  
  attr_accessor :name, :roster
  attr_writer :add_student, :grade, :sort

  def initialize(roster)
    @roster = {}

  end

  def add_student(name, grade)
    @roster[grade] ||= @roster[grade] = []     # "if x is false or undefined, then x point to y"
    @roster[grade] << name
    
  end
  
  def grade(grade)
    @roster[grade]
    @grade = grade
    @roster[grade]
  end
  
  def sort
    # @sort = sort
    
      # @students_alpha = @roster.sort.flatten
      # @students_alpha = @students_alpha.to_a.sort!
      # @students_alpha.sort.join(", ")
      # @students_alpha.sort.flatten
      
      @roster.each do |grade, students_alpha|
  # binding.pry    
       @students_alpha = [grade] << students_alpha.sort!
      end
      # @students_alpha = @students_alpha.to_a.sort!
      
      # @roster.each do |grade, new_array|
      #   @roster[grade] = new_array.sort
      # end
  end
end