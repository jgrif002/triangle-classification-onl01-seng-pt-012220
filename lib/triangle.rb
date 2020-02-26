class Triangle
  attr_reader :sideA, :sideB, :sideC 
  
  def initiliaze(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end 
  
  
  def is_triangle 
    triangle_yes = (sideA > 0 && sideB > 0 && sideC > 0) && (sideA + sideB > sideC && sideB + sideC > sideA && sideC + sideA > sideB)
    
    if is_triangle != true 
      raise TriangleError
    end 
  end 
  
    
  
  def kind
    is_triangle 
    if sideA == sideB && sideB = sideC 
      :equilateral 
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      :isoceles
    else 
      :scalene 
    end 
  end 
  
  class TriangleError < StandardError
  end 
  
end
