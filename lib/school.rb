require 'pry'
class School 
  
  attr_reader :roster, :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
    #binding.pry
  end
  
 def grade(grade)
   @roster.find do |key, value|
     if key == grade 
       return value
       #binding.pry
     end
   end
 end
 
 def sort 
   new_hash = {}
   @roster.each do |key, value|
     new_hash[key] = value.sort!
   end
   new_hash
 end
  
end