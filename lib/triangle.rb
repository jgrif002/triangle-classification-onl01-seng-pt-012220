class Triangle
  attr_accessor :sideA, :sideB, :sideC 
  
  def initiliaze(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end 
  
  def test1 
    sideA > 0 && sideB > 0 && sideC > 0 
  end 
  
  def test2
    sideA + sideB > sideC && sideB + sideC > sideA && sideC + sideA > sideB 
  end 
  
  def kind 
    if test1 == true & test2 == true 
      puts "true" 
    else
      raise TriangleError
    end 
    
      
  
    if 
  end 
  
  class TriangleError < StandardError
  end 
  
end
