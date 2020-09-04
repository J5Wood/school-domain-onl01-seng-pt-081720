require 'pry'


class School

  attr_accessor :roster, :name, :grade
  attr_reader

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end



  def sort
    @roster.sort.to_h
  end

end
