# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?
require 'pry'

def nth_prime(nth)
  primes = []
  i = 2
  while primes.length != nth
    if i.prime?
      primes.push(i)
    end
    i += 1
    if i % 2 == 0
      i += 1
    end
  end
  primes.last
end

class Integer
  def prime?
    (2..Math.sqrt(self)).none? do |num|
      self % num == 0
    end
  end
end

describe 'get the nth prime number' do 
  it '6th prime number is 13' do 
    expect(nth_prime(6)).to eq(13)
  end
  it '10001th prime number is 104743' do 
    expect(nth_prime(10001)).to eq(104743)
  end
end