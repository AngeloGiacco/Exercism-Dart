import "dart:math";

class NthPrime {
  // Put your code here
  bool checkInvalid(int number) => number <= 0;
  List<int> factors(int n) {
    var factorsArr = <int>[];
    factorsArr.add(n);
    factorsArr.add(1);
    for (var test = n - 1; test >= sqrt(n); test--)
      if (n % test == 0) {
        factorsArr.add(test);
        if (n ~/ test != test) {
          factorsArr.add(n ~/ test);
        }
      }
    return factorsArr;
  }

  bool checkPrime(int n) {
    if (n > 7 && (n % 3 == 0 || n % 5 == 0 || n % 7 == 0)) {
      return false;
    } else {
      return factors(n).length == 2;
    }
  }

  int prime(int nth) {
    if (checkInvalid(nth)) {
      throw ArgumentError("There is no zeroth prime");
    }
    if (nth == 1) {
      return 2;
    }
    int primes = 2;
    int counter = 3;
    while (primes < nth) {
      counter += 2;
      if (checkPrime(counter)) {
        primes++;
      }
    }
    return counter;
  }
}
