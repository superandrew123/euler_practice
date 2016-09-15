# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
class Integer
  def get_factors 
    factors = []
    (1..Math.sqrt(self)).each {|num|
      if(self % num == 0 && !factors.include?(num))
        factors.push(num)
        factors.push(self/num)
      end
    }
    factors
  end
  def get_primes_factors
    primes = []
    (1..self).each {|num|
      if num.get_factors.length == 2
        primes.push(num)
      end
    }
    primes
  end
end


def smallest_divisible num
  primes = num.get_primes_factors
  products = []
  primes.each {|prime|
    next if prime == 1
    i = 1
    while prime**i < num
      i += 1
    end
    i -= 1
    products.push(prime**i)
  }
  products.inject {|a,b| a * b}
end

puts smallest_divisible 20