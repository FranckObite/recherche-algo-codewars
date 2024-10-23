void main() {
  tva(montant, pourcentage) {
    if (montant is! num || pourcentage is! num) return -1;
    return (montant * (pourcentage / 100));
  }

  print(tva(1000, 18));
  print(tva(3000, 18));
  print(tva(1, 20));
  print(tva('1', 20));
}
