require 'pry'

class Triangle
  
  attr_accessor :side1, :side2, :side3 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind 
    all_sides = [side1,side2,side3]
    
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side3 == side1
      :isosceles
    elsif side1 != side2 && side2 != side3 && side3 != side1
      :scalene
    elsif all_sides.reduce == 0 || all_sides.any?
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError 
    
  end 
  
  
  
  
end
