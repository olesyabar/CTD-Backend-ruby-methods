class Sum1
  attr_accessor :total
  def initialize (a, b)
    self.total = a + b
  end
end

class Sum2
  attr_accessor :a, :b
  def initialize (a, b)
    self.a = a
    self.b = b
  end

  def new_total
    return self.a + self.b
  end
end

sum1 = Sum1.new(5, 6)
puts sum1.total

sum2 = Sum2.new(5, 6)
puts sum2.new_total