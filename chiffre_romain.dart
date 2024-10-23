/* Créez une fonction qui prend un chiffre romain comme argument 
et renvoie sa valeur sous forme d'entier décimal numérique.
Vous n'avez pas besoin de valider la forme du chiffre romain.

Les chiffres romains modernes sont écrits en exprimant 
chaque chiffre décimal du nombre à coder séparément, en 
commençant par le chiffre le plus à gauche et en sautant les 0. 
Ainsi, 1990 est rendu « MCMXC » (1000 = M, 900 = CM, 90 = XC) et 
2008 est rendu « MMVIII » (2000 = MM, 8 = VIII). 
Le chiffre romain de 1666, « MDCLXVI », 
utilise chaque lettre par ordre décroissant. */

void main() {
  // Dictionnaire pour mapper les symboles romains à leurs valeurs décimales

  chiffresRomain(String str) {
    Map<String, int> roman_values = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    // Variable pour stocker la valeur décimale totale
    int total = 0;

    for (int i = 0; i < str.length; i++) {
      if (i < str.length - 1 &&
          roman_values[str[i]]! < roman_values[str[i + 1]]!) {
        total -= (roman_values[str[i]])!;
      } else {
        total += (roman_values[str[i]]!);
      }
    }

    return total;
  }

  print(chiffresRomain("X"));
  print(chiffresRomain("MCMXCIV"));
  print(chiffresRomain("LVIII"));
}


/* const romanTable = { "M": 1000, "CM": 900, "D": 500, "CD": 400, "C": 100, "XC": 90, "L": 50, "XL": 40, "X": 10, "IX": 9, "V": 5, "IV": 4, "I": 1 };
int romanToInt(String s) => RegExp('C?M|C?D|X?C|X?L|I?X|I?V|I').allMatches(s).fold(0, (acc, m) => acc + romanTable[m[0]]); */
