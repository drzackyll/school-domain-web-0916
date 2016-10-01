require 'pry'

class School
  attr_accessor :school
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    #binding.pry
    #roster.values
     roster.each do |grade, array|
       roster[grade] = array.sort
     end
  end

end
