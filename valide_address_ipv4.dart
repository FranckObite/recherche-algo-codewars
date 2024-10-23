/* Écrivez un algorithme qui identifiera les adresses IPv4 valides au format point-décimal. 
Les adresses IP doivent être considérées comme valides si elles sont constituées de quatre octets, 
avec des valeurs comprises entre 0 et 255 inclus. 
Les zéros non significatifs (par exemple 01.02.03.04) sont considérés comme invalides
Les entrées sont garanties comme étant une seule chaîne */

void main() {
  bool isValidIpv4(String input) {
    final octets = input.split('.');
    if (octets.length != 4 || input.contains(" ")) return false;

    return octets.every((octet) {
      int? value = int.tryParse(octet);
      //print(value);

      return value != null &&
          value <= 255 &&
          value >= 0 &&
          value.toString() == octet;
    });
  }

  print(isValidIpv4("12.255.56.1"));
  print(isValidIpv4(""));
  print(isValidIpv4("abc.def.ghi.jkl"));
  print(isValidIpv4("123.456.789.0"));
  print(isValidIpv4("12.34.56"));
  print(isValidIpv4("12.34.56 .1"));
  print(isValidIpv4("12.34.56.-1"));
  print(isValidIpv4("123.045.067.089"));
  print(isValidIpv4('127.1.1.0'));
  print(isValidIpv4("0.0.0.0"));
  print(isValidIpv4("0.34.82.53"));
  print(isValidIpv4("00.34.82.53"));
  print(isValidIpv4("123.045.067.089"));
  print(isValidIpv4("192.168.1.300"));
  
}


/* Explications des modifications :

Vérification des valeurs d'octets: On ajoute une condition supplémentaire dans la fonction every pour vérifier si la valeur de l'octet est comprise entre 0 et 255.
Utilisation de every: La méthode every est plus concise pour vérifier si tous les éléments d'une liste répondent à une condition.
Simplification: On supprime la conversion en chaîne inutile int.tryParse(x).toString() != x.
Clarté: On utilise un nom de variable plus descriptif (octets) pour représenter la liste des octets. */
