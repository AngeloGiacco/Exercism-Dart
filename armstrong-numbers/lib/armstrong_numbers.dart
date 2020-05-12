import "dart:math";

class ArmstrongNumbers {
  // Put your code here
  bool isArmstrongNumber(int number) {
    return number ==
        "$number"
            .split("")
            .map((element) => pow(int.parse(element), "$number".length).toInt())
            .toList()
            .fold<int>(0, (a, b) => a + b);
  }
}
