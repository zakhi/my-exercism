module Year
  extend self

  def leap?(year)
    divisible_by?(year, 4) && (!divisible_by?(year, 100) || divisible_by?(year, 400))
  end

private

  def divisible_by?(year, divisor)
    year % divisor == 0
  end
end