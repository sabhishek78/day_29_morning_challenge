import 'dart:math';
// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
simplify(String fraction){
  List<String> NumDen=fraction.split('/');
  if(int.parse(NumDen[1])==0){
    return "Not Defined";
  }
  else if(int.parse(NumDen[0])==0){
    return '0';
  }
  else{
    return ((int.parse(NumDen[0])) ~/ ((int.parse(NumDen[0]).gcd(int.parse(NumDen[1]))))).toString()+
        '/'+((int.parse(NumDen[1])) ~/((int.parse(NumDen[0]).gcd(int.parse(NumDen[1]))))).toString();
  }

}

main() {
  print(simplify('4/6'));
  print(simplify('4/0'));
  print(simplify('0/4'));
}
