require "pry"

class School

attr_accessor :student_name, :grade
attr_reader :roster

def initialize(school_name)
    @name = school_name
    @roster = {}
end# code here!

def add_student (student_name, grade)
  unless @roster.has_key?(grade)
    @roster[grade] = []
  end
  @roster[grade] << student_name
end

def sort
  sorted_roster = {}
  @roster.each do |grade, students|
    sorted_roster[grade] = students.sort
  end
  sorted_roster
end

 def grade(student_grade)
   @roster.select do |grade, students|
     if student_grade == grade
       return students.to_a.flatten
     end
   end
end


end
