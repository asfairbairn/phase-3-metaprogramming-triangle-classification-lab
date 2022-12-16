class Triangle

  attr_reader :side1, :side2, :side3
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      raise TriangleError
    elsif side1 + side2 <= side3 || side3 + side1 <= side2 || side2 + side3 <= side1
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene#Ex:- :limit => 40
    end
  end
  #Ex:- :default =>''

  class TriangleError < StandardError
    # triangle error code
  end
end
