# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end 
  
  def grade(grade)
    roster.detect do |k, v| 
      if k == grade
        return v 
  end 
  end
end
def sort 
  new_hash = {}
  roster.each do |x, y| 
    new_hash[x] = y.sort 
  end 
  new_hash
end 
end
#school = School.new("Bayside High School")