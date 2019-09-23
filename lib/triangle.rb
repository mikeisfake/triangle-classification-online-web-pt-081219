require 'pry'

class Triangle
  
  attr_accessor :side1, :side2, :side3 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    is_triangle?
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    elsif side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    end 
  end 
  
  def is_triangle?
    all_sides = [side1,side2,side3]
    
    if all_sides.reduce(:+) == 0 || all_sides.any?{|side| side < 0 } 
      raise TriangleError
    elsif side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2 
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError 
  end 
  
  
  
  
end
