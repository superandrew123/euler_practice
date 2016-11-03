// The sum of the squares of the first ten natural numbers is,

// 12 + 22 + ... + 102 = 385
// The square of the sum of the first ten natural numbers is,

// (1 + 2 + ... + 10)2 = 552 = 3025
// Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

function sum_of_squares(number){
  var sum = 0;
  for(var i = 1; i <= number; i++){
    sum += i ** 2;
  }
  return sum;
}

console.log(sum_of_squares(10));

function square_of_sums(number){
  var sum = 0;
  for(var i = 1; i <= number; i++){
    sum += i;
  }
  return sum ** 2;
}

console.log(square_of_sums(10));