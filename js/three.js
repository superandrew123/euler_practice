// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

function largest_prime_factor(num) {
  var factors = get_factors(num);
  var factorsLength = factors.length;
  for(var i = (factorsLength - 1); i >= 0; i--){
    if(is_prime(factors[i])){
      return factors[i];
    }
  }  
}
function get_factors(num){
  var factors = [];
  var max = parseInt(Math.sqrt(num));
  for(var i = 1; i <= max; i++){
    if(num % i == 0){
      if(factors.indexOf(i) < 0){
        factors.push(i);
      }
      if(factors.indexOf(num / i) < 0){
        factors.push(num / i);
      }
    }
  }
  return factors.sort(function(a,b){return a - b;});
}
function is_prime(num){
  if(get_factors(num).length == 2){
    return num;
  }
}
console.log(largest_prime_factor(600851475143));