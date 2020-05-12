String reverse(String input) {
  // Put your code here
  if (input == null || input == '') {
    return '';
  }
  String result = '';
  List<String> parts = input.split('');
  for (int i = parts.length - 1; i >= 0; i--) {
    result += parts[i];
  }
  return result;
}

void main() {
  print(reverse("Angelo"));
}
