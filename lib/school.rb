require 'pry'
class School
	attr_accessor :roster, :name 
	attr_reader :school 
	
	def initialize(name)
    @name = name
    @roster = {}
  end
  
  
  def add_student(name,grade)
    if roster[grade]
    roster[grade] << name
    else 
      roster[grade] = []
      #binding.pry   
  	roster[grade] << name
    end 		
  end
  def grade(number)
    roster[number]

  end
  def sort()
    self.roster.each do | grade, students |
    roster[grade] = students.sort 
    end
    return roster 
  end
end

