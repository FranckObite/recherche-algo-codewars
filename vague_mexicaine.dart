/* La vague (connue sous le nom de vague mexicaine dans le monde anglophone en dehors de l'Amérique du Nord)
 est un exemple de rythme métachronal réalisé dans un stade bondé lorsque des groupes successifs de spectateurs 
 se lèvent brièvement, crient et lèvent les bras. Immédiatement après s'être étiré à pleine hauteur, 
 le spectateur revient à la position assise habituelle.

Le résultat est une vague de spectateurs debout qui traverse la foule, même si les spectateurs individuels 
ne s'éloignent jamais de leur siège. Dans de nombreuses grandes arènes, la foule est assise dans un circuit 
contigu tout autour du terrain de sport, et ainsi la vague peut se déplacer continuellement autour de l'arène ; 
dans les configurations de sièges discontinues, la vague peut plutôt se refléter d'avant en arrière à travers la 
foule. Lorsque l’espace entre les sièges est étroit, la vague peut parfois le traverser. Habituellement, une seule 
crête de vague est présente à un moment donné dans une arène, bien que des vagues simultanées et contrarotatives aient 
été produites. (Source Wikipédia) */

/* Dans ce Kata simple, votre tâche consiste à créer une fonction qui transforme une corde en vague mexicaine.
Vous recevrez une chaîne et vous devrez renvoyer cette chaîne dans un tableau où une lettre majuscule représente une personne debout. */

/* 1. La chaîne d’entrée sera toujours en minuscules mais peut-être vide.

 2. Si le caractère de la chaîne est un espace, passez-le comme s'il s'agissait d'un siège vide. */

void main() {
  List<String> wave(String str) {
  List<String> list = [];

  for (int i = 0; i < str.length; i++) {
    if (str[i] != ' ') {
      String newStr = str.substring(0, i) + str[i].toUpperCase() + str.substring(i + 1);
      list.add(newStr);
    }
  }

  return list;
}

  List<String> wave2(String str) {
    List<String> result = [];

    for (int i = 0; i < str.length; i++) {
      String newStr =
          str.substring(0, i) + str[i].toUpperCase() + str.substring(i + 1);
      result.add(newStr);
    }

    return result;
  }

  List<String> wave3(String str) {
    List<String> result = [];
    StringBuffer buffer = StringBuffer();

    for (int i = 0; i < str.length; i++) {
      if (str[i] != ' ') {
        buffer.write(str.substring(0, i));
        buffer.write(str[i].toUpperCase());
        buffer.write(str.substring(i + 1));
        result.add(buffer.toString());
        buffer.clear();
      } else {
        result.add(str);
      }
    }

    return result;
  }

  print(wave("a       b    "));

  //print(wave2("this is a few words"));
}
