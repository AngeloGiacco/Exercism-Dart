import 'package:validators/validators.dart';

class Luhn {
  // Put your code here
  bool validNumber(String number) =>
      number.length ==
      number.split("").where((element) => isNumeric(element)).length;

  List<int> doubleCode(List<int> code) {
    List<int> arr = code;
    for (int i = arr.length - 2; i >= 0; i -= 2) {
      arr[i] = (arr[i] > 4) ? arr[i] * 2 - 9 : arr[i] * 2;
    }
    return arr;
  }

  dynamic valid(String n) {
    String number = n.replaceAll(new RegExp(r"\s\b|\b\s"), "");
    if (!validNumber(number)) {
      return false;
    } else {
      List<int> number_list =
          number.split("").map((e) => int.parse(e)).toList();
      if (number_list[0] == 0 && number_list.length == 1) {
        return false;
      }
      List<int> doubled_code = doubleCode(number_list);
      print(doubled_code);
      return doubled_code.fold<int>(0, (a, b) => a + b) % 10 == 0;
    }
  }
}

void main() {
  Luhn l = new Luhn();
  print(l.valid("0 "));
}
