class BeerSong {
  // Put your code here
  List<String> lyrics(int n) {
    switch (n) {
      case 0:
        return [
          "No more bottles of beer on the wall, no more bottles of beer.",
          "Go to the store and buy some more, 99 bottles of beer on the wall."
        ];
      case 1:
        return [
          "1 bottle of beer on the wall, 1 bottle of beer.",
          "Take it down and pass it around, no more bottles of beer on the wall."
        ];
      case 2:
        return [
          "2 bottles of beer on the wall, 2 bottles of beer.",
          "Take one down and pass it around, 1 bottle of beer on the wall."
        ];
      default:
        return [
          "$n bottles of beer on the wall, $n bottles of beer.",
          "Take one down and pass it around, ${n - 1} bottles of beer on the wall."
        ];
    }
  }

  List<String> recite(int start, int repeats) {
    List<String> res = <String>[];
    for (int x = start; x > start - repeats + 1; x--) {
      res.addAll(lyrics(x));
      res.add("");
    }
    res.addAll(lyrics(start - repeats + 1));
    return res;
  }
}
