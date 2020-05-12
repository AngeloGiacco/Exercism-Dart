class SecretHandshake {
  // Put your code here
  Map<int, String> actions = const <int, String>{
    4: "wink",
    3: "double blink",
    2: "close your eyes",
    1: "jump"
  };
  List<String> commands(int number) {
    List<String> result = <String>[];
    String binary = number.toRadixString(2).padLeft(5, "0");
    print(binary);
    for (int i = 4; i >= 1; i--) {
      if (binary[i] == "1") {
        result.add(actions[i]);
      }
    }
    return binary[0] == "1" ? result.reversed.toList() : result;
  }
}
