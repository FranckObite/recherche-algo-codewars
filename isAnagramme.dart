bool estAnagramme(String s1, String s2) {
  
  if (s1.length != s2.length) {
    return false;
  }

  List<String> list1 = s1.split('');
  List<String> list2 = s2.split('');

  list1.sort();
  list2.sort();

  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }

  return true;
}

void main() {
  print(estAnagramme('silent', 'listen')); // => true
  print(estAnagramme('abc', 'def')); // => false
}

