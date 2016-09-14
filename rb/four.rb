# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome max, min
  i = max
  pali = 0
  while i >= min
    n = max
    while n >= min
      x = (i * n).to_s
      if x == x.reverse && ((i * n) > pali)
        pali = i * n
      end
      n -= 1
    end
    i -= 1
  end
  pali
end

puts largest_palindrome 999, 100