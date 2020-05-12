class ResistorColor {
  // Put your code here
  final colors = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white"
  ];

  int colorCode(String c) {
    return (colors.contains(c)) ? colors.indexOf(c) : -1;
  }
}
