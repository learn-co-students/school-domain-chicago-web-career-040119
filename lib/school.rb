require "pry"

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.transform_values {|student_arr| student_arr.sort}
  end


end
