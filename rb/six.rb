# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

require 'pry'
require 'rspec'

class Fixnum
  def sum_of_squares
    sum = 0
    (self + 1).times do |num|
      sum += num ** 2
    end
    sum
  end
  def square_of_sum
    sum = 0
    (self + 1).times do |num|
      sum += num
    end
    sum ** 2
  end
end

# describe 'Squares and sums' do
#   it 'the sum of squares' do 
#     expect(10.sum_of_squares).to eq(385)
#   end
#   it 'the square of sums' do 
#     expect(10.square_of_sum).to eq(3025)
#   end
# end

puts 100.square_of_sum - 100.sum_of_squares