int sommePairs(List<int> nombres) {
  int somme = 0;

  for (int nombre in nombres) {
    if (nombre % 2 == 0) {
      somme += nombre;
    }
  }

  return somme;
}

void main() {
  print(sommePairs([1, 2, 3, 4])); // => 6
  print(sommePairs([10, 15, 20])); // => 30
}
