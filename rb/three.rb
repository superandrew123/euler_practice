# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
require "pry"

class Integer
    def factors
        factors = []
        (1..Math.sqrt(self)).each {|num|
            if self % num == 0 && num != 1 && num != self
                factors.push(num) unless factors.include?(num)
                factors.push(self / num) unless factors.include?(self / num)
            end
        }
        factors.sort
    end
    def is_prime?
        self.factors.length == 0 ? true : false
    end
    def largest_prime_factor
        factors = self.factors.reverse
        factors.each { |factor|
            if factor.is_prime?
                return factor
            end
        }
    end
end

puts "#{600851475143.largest_prime_factor} is the largest factor"

