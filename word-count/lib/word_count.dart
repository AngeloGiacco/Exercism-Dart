class WordCount {
  // Put your code here
  Map<String, int> countWords(String text) {
    final wordCount = <String, int>{};
    RegExp exp = RegExp(r"\w+(\'\w+)?");
    Iterable<RegExpMatch> matches = exp.allMatches(text);
    return matches.fold<Map<String, int>>(
        wordCount,
        (a, b) => wordCount
          ..update(b.group(0).toLowerCase(), (value) => value + 1,
              ifAbsent: () => 1));
  }
}
