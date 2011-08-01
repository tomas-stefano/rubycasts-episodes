class Integer
  def simple_prime?
    return false if self.equal?(0) or self.equal?(1)
    # 40% sqrt
    # 20% all?
    (2..Math.sqrt(self).floor).all? { |number| (self % number).nonzero? }
  end
  
  def fast_prime?
    return true if self == 2
    if self < 2 or self.even?
      false
    else
      3.step(Math.sqrt(self).floor, 2).all? { |number| (self % number).nonzero? }
    end
  end  
end