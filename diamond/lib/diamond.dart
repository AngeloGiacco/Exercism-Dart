class Diamond {
  // Put your code here
  List<String> rows(String letter) {
    List<String> alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
    int index = alphabet.indexOf(letter);
    List<String> alphabet_slice = alphabet.sublist(0, index + 1);
    List<String> result = [];
    for (int i = 0; i < alphabet_slice.length; i++) {
      String row = "";
      int trail = alphabet_slice.length - i - 1;
      row += " " * trail;
      row += alphabet_slice[i];
      if (i > 0) {
        int middle_space = i * 2 - 1;
        row += " " * middle_space;
        row += alphabet_slice[i];
      }
      row += " " * trail;
      result.add(row);
    }
    List<String> repeat = result.sublist(0, alphabet_slice.length - 1);
    List<String> rev_repeat = new List.from(repeat.reversed);
    for (int j = 0; j < rev_repeat.length; j++) {
      result.add(rev_repeat[j]);
    }
    return result;
  }
}
