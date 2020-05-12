class ResistorColorDuo {
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

  int colorValue(String c) => colors.indexOf(c);

  int value(List<String> color_list) =>
      10 * colorValue(color_list[0]) + colorValue(color_list[1]);
}
