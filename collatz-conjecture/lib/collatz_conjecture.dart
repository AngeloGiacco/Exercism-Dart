class CollatzConjecture {
  // Put your code here
  num collatz(num x) => x % 2 == 0 ? (x / 2) : (3 * x + 1);

  int steps(num start) {
    if (start <= 0) {
      throw ArgumentError('Only positive numbers are allowed');
    } else {
      int count = 0;
      while (start != 1) {
        start = collatz(start);
        count++;
      }
      return count;
    }
  }
}
