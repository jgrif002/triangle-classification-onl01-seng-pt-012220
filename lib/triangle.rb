class Triangle
  attr_accessor :sideA, :sideB, :sideC 
  
  def initiliaze(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end 
  
  def is_triangle_test_1
    sideA > 0 && sideB > 0 && sideC > 0 
  end 
  
  def is_triangle_test_2
    sideA + sideB > sideC && sideB + sideC > sideA && sideA + sideC > sideB
  end 
  
  def kind
    if is_triangle_test_1 == true && is_triangle_test_2 == true 
      puts true 
    else 
      raise TriangleError 
    end 
    
    if sideA == sideB && sideB = sideC 
      :equilateral 
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      :isosceles
    else 
      :scalene 
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end
