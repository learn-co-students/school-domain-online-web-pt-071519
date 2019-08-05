require "pry"

class School
  #attr_accessor :student_name, :grade
  attr_reader :roster
  
  def initialize(name)
    @name = name 
    @roster = {} 
  end 
  
  def roster 
    @roster
  end 
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade]<< name
    else 
      @roster[grade] = [name]
     # binding.pry
    end
  end 
  
  def grade(grade)
     @roster[grade]
     #This sorts through the roster by the grade and returns the name assosciated with the grade. 
     #binding.pry 
  end
  
  def sort
    @roster.each do |grade, student_name|
    @roster[grade]= student_name.sort!
    #the bang at the end permanently changes this array. 
    end 
  end 
end 

  
