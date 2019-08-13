require 'pry'
class School 
  attr_accessor :roster, :name 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end
  
  def grade(grade)
    new_arr = []
    @roster.select do |key, value| 
      if key == grade 
         new_arr << value
      #binding.pry
      end
    end
    new_arr.flatten
  end
  
  def sort 
    new_hash = {}
    @roster.each do |grade, name|
      new_hash[grade] = name.sort!
    end
    new_hash
  end
  
  
end
