# code here!
require 'pry'

class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student (student_name, grade)
        student_info = {grade => student_info}
        if !@roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade].push(student_name)
        else
            @roster[grade].push(student_name)
        end
        # binding.pry
    end 

    def grade(num)
        roster[num]
    end

    def sort
        @roster.map do|k| 
            k[1].sort
            @roster[k[0]] = k[1].sort
        end 
        @roster
        
    end


end 

