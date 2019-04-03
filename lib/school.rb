# code here!
require "pry"

class School
  attr_reader :roster, :name

  # @roster = {}

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    unless roster.has_key?(grade)
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(num)
    roster[num]
  end

  def sort
    new_hash = {}
    # binding.pry
    roster.keys.sort.each {|el|
      new_hash[el] = roster[el].sort
    }
    # roster.each { |keyz, valz|
    #   new_hash[keyz] << valz.sort
    # }
    new_hash
    # binding.pry
  end

end

school = School.new("Bayside High School")

school.add_student("Homer Simpson", 9)
school.add_student("Jeff Baird", 10)
school.add_student("Avi Flombaum", 10)
school.add_student("Blake Johnson", 7)

# binding.pry

"wacky"
