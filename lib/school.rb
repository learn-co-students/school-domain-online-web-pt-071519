class School 
  attr_accessor :name, :roster
  def initialize(name) 
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade_level)
    @roster[grade_level]||=[]
    @roster[grade_level]<< student
  end 
  

  def grade(grade_level)
@roster[grade_level]

end 



def sort 
  new_hash = {}
  @roster.each do |x, y| 
    new_hash[x] = y.sort 
  end 
  new_hash
end 
  
  end
  
