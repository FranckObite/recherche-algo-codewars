/* Écrivez une fonction qui accepte un tableau de 10 entiers (entre 0 et 9), 
qui renvoie une chaîne de ces nombres sous la forme d'un numéro de téléphone.
Le format renvoyé doit être correct pour pouvoir relever ce défi.

N'oubliez pas l'espace après les parenthèses fermantes ! 

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) // => returns "(123) 456-7890"

*/

void main() {
  String createPhoneNumber(List<int> number) {
    String phoneNulber = '';
    for (int i = 0; i < number.length; i++) {
      if (i == 0) {
        phoneNulber = phoneNulber + '(${number[i]}';
      } else if (i == 2) {
        phoneNulber = phoneNulber + "${number[i]}) ";
      } else if (i == 1) {
        phoneNulber = phoneNulber + '${number[i]}';
      } else if (i > 2 && i < 6) {
        phoneNulber = phoneNulber + "${number[i]}";
      } else if (i == 6) {
        phoneNulber = phoneNulber + "-${number[i]}";
      } else {
        phoneNulber = phoneNulber + "${number[i]}";
      }
    }
    return phoneNulber;
  }


  String createPhoneNumber2(List<int> numbers) {
  // Vérifier si le tableau contient au moins 10 éléments
  if (numbers.length < 10) {
    return 'Le tableau doit contenir au moins 10 chiffres';
  }

  // Utiliser une expression régulière pour formater le numéro
  return '(${numbers.sublist(0, 3).join('')}) ${numbers.sublist(3, 6).join('')}-${numbers.sublist(6).join('')}';
}

  print(createPhoneNumber2([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
  print(createPhoneNumber2([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]));
  print(createPhoneNumber2([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
}



/*  test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]', () => expect(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), equals('(123) 456-7890')));
    test('Testing for [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]', () => expect(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), equals('(111) 111-1111')));
    test('Testing for [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]' */
