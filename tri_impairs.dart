List<int> triImpairs(List<int> tableau) {
  
  List<int> impairs = [];
  List<int> indicesImpairs = [];

  for (int i = 0; i < tableau.length; i++) {
    if (tableau[i] % 2 != 0) {
      impairs.add(tableau[i]);
      indicesImpairs.add(i);
    }
  }


  impairs.sort();


  for (int i = 0; i < indicesImpairs.length; i++) {
    tableau[indicesImpairs[i]] = impairs[i];
  }

  return tableau;
}

void main() {
  print(triImpairs([5, 3, 2, 8, 1, 4])); // => [1, 3, 2, 8, 5, 4]
  print(triImpairs([7, 1, 9, 4])); // => [1, 7, 9, 4]
}

