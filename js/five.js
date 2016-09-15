// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

function get_factors(num){
  var factors = [];
  var max_factor = Math.sqrt(num);
  for(var i = 1; i <= max_factor; i++){
    if(num % i == 0 && factors.indexOf(i) < 0){
      factors.push(i);
      if(num / i != i){
        factors.push(num / i);
      }
    }
  }
  return factors.sort(function(a,b){return a - b});
}

function get_prime_factors(num){
  var primes = [];
  for(var i = 1; i < num; i++){
    if(get_factors(i).length == 2){
      primes.push(i);
    }
  }
  return primes;
}

function get_minimum_product(num){
  var prime_factors = get_prime_factors(num);
  var product = 1;
  for(var i = 0; i < prime_factors.length; i++){
    var prime = prime_factors[i];
    var x = 1;
    while(Math.pow(prime, x + 1) < num){
      x++;
    }
    var product = product * Math.pow(prime, x);
  }
  return product;
}