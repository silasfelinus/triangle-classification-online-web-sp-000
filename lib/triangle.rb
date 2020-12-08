class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :unknwon, :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    triangle_kind = :unknown
    if @size1 == @size2 && @size2 == @size3
      triangle_kind = :equilateral
    elsif @size1 == @size2 || @size2 == @size3
      triangle_kind = :isosceles
    else
      triangle_kind = :scalene
    end
    triangle_kind
  end


  class TriangleError < StandardError
    # triangle error code
  end
end
