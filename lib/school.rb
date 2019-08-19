class School
  attr_reader :name,:roster,:add_student,:grade, :sort
  def initialize(name)
    @name=name
    @roster={}
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    @student_name=student_name
    @grade=grade
    if @roster[grade]
      @roster[grade]<<student_name
    else
      @roster[grade]=[student_name]
    end
  end

  def grade(x)
    @roster[x]
  end

  def sort
  @roster.each do |grade,student_names|
    @roster[grade]=student_names.sort
  end
  end

end
