class Triangle
  attr_accessor :sideA, :sideB, :sideC 
  
  def initiliaze(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end 
  
  
  def is_a_triangle
    if sideA > 0 && sideB > 0 && sideC > 0 && sideA + sideB > sideC && sideB + sideC > sideA && sideC + sideA > sideB 
    else
      raise TriangleError
    end 
  end 
  
    
  
  def kind
    is_a_triangle 
    if sideA == sideB && sideB = sideC 
      :equilateral 
    elsif sideA != sideB && sideB != sideC && sideC != sideA 
      :scalene 
    else 
      :isoceles 
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end
