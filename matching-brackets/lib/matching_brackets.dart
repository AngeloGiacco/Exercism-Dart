import 'package:stack/stack.dart';

class MatchingBrackets {
  List<String> openers = ["{", "(", "["];
  List<String> closers = ["}", ")", "]"];
  // Put your code here
  bool isPaired(String brackets) {
    List<String> text = brackets.split("");
    Stack<String> s = Stack();
    for (int i = 0; i < text.length; i++) {
      if (openers.contains(text[i])) {
        s.push(text[i]);
      } else if (closers.contains(text[i])) {
        String matching_bracket = openers[closers.indexOf(text[i])];
        if (s.top() == matching_bracket) {
          s.pop();
        } else {
          return false;
        }
      }
    }
    if (s.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
