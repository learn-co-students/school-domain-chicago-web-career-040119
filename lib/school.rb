# code here!
class School
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster={}
end


def add_student(name, grade)
  if @roster[grade]
    @roster[grade] << name
  else
  @roster[grade] = [name]
  # @roster[:grade] << name
end
end

def grade(student_grade)
  @roster.map do |k, v|
    if student_grade == k
      return v
    end
  end
end

def sort
sorted_hash = {}
@roster.sort.each do |grade, name|
sorted_hash[grade]= name.sort
end
sorted_hash
end
end
