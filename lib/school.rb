
class School
  attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
  end
  
def name
     @name 
   end
   
def name=(string)
     @name = string
  end

def add_student(string, num)
  roster[num] ||= []
  roster[num] << string
  end

def grade(num)
  roster.detect do |x,y|
    if x == num
      return y
    end
  end
end 

def sort
  students_hash = {}
  roster.each do |x,y|
    students_hash[x] = y.sort
  end
  students_hash
      end
    end
