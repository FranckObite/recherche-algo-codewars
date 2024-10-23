List<T> inverseTableau<T>(List<T> tableau) {
  return tableau.reversed.toList();
}

void main() {
  print(inverseTableau([1, 2, 3])); // => [3, 2, 1]
  print(inverseTableau(['a', 'b', 'c'])); // => ['c', 'b', 'a']
}

