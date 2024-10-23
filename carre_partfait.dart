import 'dart:math';

void main() {
  print(isSquare(-2));  // false
  print(isSquare(9));   // true
  print(isSquare(4));   // true
  print(isSquare(0));   // true
  print(isSquare(6));   // false
  print(isSquare(25));  // true
  print(isSquare(26));  // false
  print(isSquare(3));   // false
}

bool isSquare(int n) {
  if (n < 0) {
    return false;
  }
  var q = sqrt(n);
  return q == q.toInt();
}

var isSquare2 = (n) => sqrt(n).remainder(1) == 0;

bool isSquare3(num n) => sqrt(n) % 1 == 0;


