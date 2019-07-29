class School 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster 
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    @roster[grade] ||= []
    @roster[grade] << student_name 
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |key, value|
      value.sort!
    end
  end
end