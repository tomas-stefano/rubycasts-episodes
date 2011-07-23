class Integer
  def simple_prime?
    return false if self.equal?(0) or self.equal?(1)
    (2..Math.sqrt(self).floor).all? { |number| (self % number).nonzero? }
  end
end
