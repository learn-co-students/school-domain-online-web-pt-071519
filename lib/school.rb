require "pry"
class School
  
def initialize(roster)
  roster = {}
  @roster = roster
end

def roster
  @roster
end 
  
def add_student(name, grade)
  if roster.include? grade
    roster[grade] << name
  else
    roster[grade] = []
  roster[grade] << name
  end
end

def grade(grade)
  roster[grade]
end



def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end


end 
school = School.new("Bayside High School")

#if roster has the grade in question push the student name else create the array for roster grade and push the student