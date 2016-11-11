// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

// What is the 10 001st prime number?

function is_prime(num){
  var sqrt = Math.sqrt(num);
  for(var i = 2; i <= sqrt; i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}

function nth_prime(nth){
  var primes = [];
  for(var i = 2; primes.length < nth; i++){
    if(is_prime(i)){
      primes.push(i);
    }
  }
  return primes[primes.length - 1];
}

nth_prime(6);