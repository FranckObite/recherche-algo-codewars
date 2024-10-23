String changementCasse(String chaine) {
  
  List<String> resultat = [];

 
  for (var caractere in chaine.split('')) {
  
    if (caractere.toLowerCase() == caractere) {
   
      resultat.add(caractere.toUpperCase());
    } else {
      resultat.add(caractere.toLowerCase());
    }
  }


  return resultat.join();
}

void main() {
  print(changementCasse('BonJour')); // => 'bONjOUR'
  print(changementCasse('TesT')); // => 'tESt'
}

