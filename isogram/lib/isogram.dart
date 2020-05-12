import 'package:validators/validators.dart';

class Isogram {
  // Put your code here
  bool isIsogram(String s) {
    List<String> word = s
        .split("")
        .where((element) => isAlpha(element))
        .map((element) => element.toLowerCase())
        .toList();
    return Set<String>.from(word).length == word.length;
  }
}
