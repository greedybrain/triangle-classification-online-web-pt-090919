class Triangle
  
  attr_reader :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    sides = [@side1, @side2, @side3]
    if sides.all?{|side| side > 0}
      :equilateral if sides.first == sides[1] && sides[1] == sides.last
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end
