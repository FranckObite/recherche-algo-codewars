void main() {
  String disemvowel(String str) => str.replaceAll(RegExp('[aeiouAEIOU]'), '');

  print(disemvowel("J'aime ma patrie, elle est magnifique "));
}
