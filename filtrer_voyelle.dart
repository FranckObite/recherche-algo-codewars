String filtrerVoyelles(String chaine) {
  final voyelles = ['a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y'];

  List<String> voyellesTrouvees = [];

  for (var caractere in chaine.split('')) {
    if (voyelles.contains(caractere)) {
      voyellesTrouvees.add(caractere);
    }
  }

  return voyellesTrouvees.join();
}

void main() {
  print(filtrerVoyelles('Le grand jour est levé, Dieu nous a visité')); // => 'oou'
  print(filtrerVoyelles('Voici les temps nouveau, chantons Gloire à lAgneau ')); // => 'e'
}


