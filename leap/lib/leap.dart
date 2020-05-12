class Leap {
  // Put your code here
  bool leapYear(int year) =>
      ((year % 400 == 0) || (year % 100 != 0 && year % 4 == 0));
}
