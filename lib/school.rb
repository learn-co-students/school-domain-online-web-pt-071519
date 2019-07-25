require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    
    #if roster has key of grade inputted etc.. 9,10,11,12
      if @roster.has_key?(grade)
        # binding.pry
        # push name inputted to that key
        @roster[grade] << name
        # if not 
      else
        #? we create a new key, value pair???
        @roster[grade] = [name]
        # binding.pry
      end
  end

  def grade(student_grade)
    # taking input and using it to access key of roster hash
    @roster[student_grade]
  end

  def sort
    sorted_hash = {}
    @roster.each do |key_grade, value_students|
      # binding.pry
      sorted_hash[key_grade] = value_students.sort
      # binding.pry
    end
    sorted_hash
  end



end