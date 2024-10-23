
void main() {
  
  print(nbrDig(25, 1));
  print(countDigitOccurrences(25,1));
}

int nbrDig(int n, int d) {
  // Crée une liste pour stocker les carrés des nombres de 0 à n
  List<int> squares = [];

  // Calcule les carrés et les ajoute à la liste
  for (int i = 0; i <= n; i++) {
    squares.add(i * i);
  }

  // Initialise un compteur pour les occurrences du chiffre d
  int count = 0;

  // Parcourt chaque carré dans la liste
  for (int square in squares) {
    // Copie le carré dans une variable temporaire pour ne pas modifier l'original
    int temp = square;

    // Tant qu'il reste des chiffres dans le carré
    while (temp > 0) {
      // Récupère le dernier chiffre du carré
      int lastDigit = temp % 10;

      // Si le dernier chiffre est égal au chiffre recherché, incrémente le compteur
      if (lastDigit == d) {
        count++;
      }

      // Supprime le dernier chiffre du carré
      temp ~/= 10;
    }
  }

  // Renvoie le nombre total d'occurrences
  return count;
}

int countDigitOccurrences(int n, int d) {
  return List.generate(n + 1, (i) => (i * i).toString())
      .join()
      .split(d.toString())
      .length - 1;
}
