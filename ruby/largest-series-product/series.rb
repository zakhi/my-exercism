class Series
  def initialize(digits)
    @digits = digits
  end

  def digits
    @digits.chars.map { |c| c.to_i }
  end

  def slices(size)
    raise ArgumentError if size > digits.length
    size > 0 ? digits.each_cons(size).to_a : []
  end

  def largest_product(size)
    slices(size).map { |slice| slice.reduce(:*) }.max || 1
  end
end