class Fraction
  attr_accessor :numerator, :denominator


  def initialize(numerator = 0, denominator = 1)
    self.numerator = numerator
    self.denominator = denominator
    optimize
  end

  private

  def optimize
    gcd = greatest_common_divisor(self.numerator, self.denominator)
    self.numerator /= gcd
    self.denominator /= gcd
  end

  def greatest_common_divisor(number1, number2)
    if (number1 == 0 or number2 == 0)
      return 1
    elsif number1 < 0
      number1 *= -1
    elsif number2 < 0
      number2 *= -1
    end

    while (number1 != number2)
      if number1 > number2
        number1 -= number2
      else
        number2 -= number1
      end
    end
    return number1
  end

  public

  def +(fraction)
    resultNumerator = self.numerator * fraction.denominator + fraction.numerator * self.denominator
    resultDenominator = self.denominator * fraction.denominator
    if resultDenominator == resultNumerator
      return 1
    else
      return Fraction.new(resultNumerator, resultDenominator)
    end
  end

  def -(fraction)
    resultNumerator = self.numerator * fraction.denominator - fraction.numerator * self.denominator
    resultDenominator = self.denominator * fraction.denominator
    if resultDenominator == resultNumerator
      return 1
    else
      return Fraction.new(resultNumerator, resultDenominator)
    end
  end

  def *(fraction)
    resultNumerator = self.numerator * fraction.numerator
    resultDenominator = self.denominator * fraction.denominator
    if resultDenominator == resultNumerator
      return 1
    else
      return Fraction.new(resultNumerator, resultDenominator)
    end
  end

  def /(fraction)
    resultNumerator = self.numerator * fraction.denominator
    resultDenominator = self.denominator * fraction.numerator
    if resultDenominator == resultNumerator
      return 1
    else
      return Fraction.new(resultNumerator, resultDenominator)
    end
  end
end

fractionArr = [Fraction.new(1, 2), Fraction.new(3, 4), Fraction.new(5, 6), Fraction.new(7, 8)]

sum = fractionArr.inject do |result, element|
  result += element
end

p sum.inspect

