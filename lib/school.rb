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
    binding.pry
  end


  def sort
    @roster.sort
  end
  
end
