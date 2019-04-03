# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
    @school=name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_hash = {}
    @roster.map do |grade, name|
      sorted_hash[grade] = (name.sort)
  end
  sorted_hash
 end

end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster

school.sort
