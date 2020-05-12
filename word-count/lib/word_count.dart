class WordCount {
  // Put your code here
  Map<String, int> countWords(String text) {
    Map<String, int> word_ct = new Map();
    var exp = new RegExp(r"\w+(\'\w+)?");
    Iterable<RegExpMatch> matches = exp.allMatches(text);
    for (RegExpMatch match in matches) {
      String word = match.group(0).toLowerCase();
      if (word_ct.containsKey(word)) {
        word_ct[word] += 1;
      } else {
        word_ct[word] = 1;
      }
    }
    return word_ct;
  }
}
