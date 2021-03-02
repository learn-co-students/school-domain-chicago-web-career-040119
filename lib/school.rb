class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(name, grade)
    if @roster[grade]
      puts @roster[grade]
      @roster[grade] << name
    else 
      @roster[grade] = [name]
    end 
  end 

  def grade(grade)
    if @roster[grade]
      @roster[grade]
    else 
      puts 'this roster does not exist'
    end 
  end 

  def sort
    sorted_hash = {}
    @roster.map do |grade, name|
      sorted_hash[grade] = name.sort
    end 
    sorted_hash
  end 

end

# school = School.new("Bayside High School")
# school.add_student("Zach Morris", 9)
# school.roster
#
# school.sort
