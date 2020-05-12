// Put your code here

Map<String, int> points = const <String, int>{
  "": 0,
  "AEIOULNRST": 1,
  "DG": 2,
  "BCMP": 3,
  "FHVWY": 4,
  "K": 5,
  "JX": 8,
  "QZ": 10,
};

int get_points(String letter) =>
    points[points.keys.firstWhere((str) => str.contains(letter))];

int score(String word) => word
    .toUpperCase()
    .split("")
    .map((element) => get_points(element))
    .fold(0, (prev, element) => prev + element);
