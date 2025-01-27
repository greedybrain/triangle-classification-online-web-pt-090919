require 'pry'

class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    sides = [@side1, @side2, @side3]
    raise TriangleError if (@side1 <= 0 || @side2 <= 0 || @side3 <= 0) or (sides.first + sides[1] <= sides.last || sides.first + sides.last <= sides[1] || sides[1] + sides.last <= sides.first)
    
    return :equilateral if sides.first == sides[1] && sides[1] == sides.last
    return :isosceles if sides[1] == sides.last || sides.first == sides.last || sides.first == sides[1]
    return :scalene if sides.uniq.length == 3
  end
  
  class TriangleError < StandardError 
  end
end
