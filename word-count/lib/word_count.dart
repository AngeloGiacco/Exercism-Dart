class WordCount {
  final _exp = RegExp(r"\w+(\'\w+)?");
  Map<String, int> countWords(String text) {
    return _exp
        .allMatches(text)
        .map((match) => match.group(0).toLowerCase())
        .fold<Map<String, int>>({}, _updateCount);
  }
  Map<String, int> _updateCount(Map<String, int> wordCount, String word) =>
      wordCount..update(word, (value) => ++value, ifAbsent: () => 1);
}
