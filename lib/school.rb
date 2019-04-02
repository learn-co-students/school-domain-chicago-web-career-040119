class School


  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(student, grade)
    if !@roster.has_key?(grade)
      @roster[grade] = []
    end

    @roster[grade] << student
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.transform_values { |student_arr| student_arr.sort }

  end

end
