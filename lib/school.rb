# code here!
require "pry"

class School

  roster = {}

  # def initialize(name)
  #   @name = name
  # end

  def add_student(name, grade)
    @name = name
    @grade = grade
    roster << name
  end

end

school = School.new("Bayside High School")
