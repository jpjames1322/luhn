module Luhn
  def self.is_valid?(number)
    number = number.to_s.chars.reverse
    number = number.map(&:to_i)
    sum = 0
    number.each_with_index do |a, b|
      if b.odd?
        a = a * 2
        if a > 9
          a = a - 9
        end
      end
      sum = sum + a
    end 
    return sum%10 == 0
  end
end