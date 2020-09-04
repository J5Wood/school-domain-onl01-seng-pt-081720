require 'pry'


class School

  attr_accessor :roster, :name, :grade
  attr_reader

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.none? { |grade| grade }
      @roster[grade] = []
      @roster[grade] << name
    else
        @roster[grade] << name
    end
  end

end
