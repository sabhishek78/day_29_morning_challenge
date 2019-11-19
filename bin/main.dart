import 'dart:math';

// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
simplify(String fraction) {
  List<String> NumDen = fraction.split('/');
  int numerator = int.parse(NumDen[0]);
  int denominator = int.parse(NumDen[1]);
  if (denominator == 0) {
    return "Not Defined";
  } else if (numerator == 0) {
    return '0';
  } else {
    return divideByGcd(numerator, denominator);
  }
}
divideByGcd(int N, int D){
  int Gcd=N.gcd(D);
  int reducedN=N~/Gcd;
  int reducedD=D~/Gcd;
  return reducedN.toString()+'/'+reducedD.toString();
}
main() {
  print(simplify('4/6'));
  print(simplify('4/0'));
  print(simplify('0/4'));
}
