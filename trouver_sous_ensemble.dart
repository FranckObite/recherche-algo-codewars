bool trouverSousEnsemble(List<int> nombres, int cible) {

  List<List<bool>> dp = List.generate(nombres.length + 1, (_) => List.filled(cible + 1, false));

  
  for (int i = 0; i <= nombres.length; i++) {
    dp[i][0] = true;
  }

  
  for (int i = 1; i <= nombres.length; i++) {
    for (int j = 1; j <= cible; j++) {
      if (j >= nombres[i - 1]) {
        dp[i][j] = dp[i - 1][j] || dp[i - 1][j - nombres[i - 1]];
      } else {
        dp[i][j] = dp[i - 1][j];
      }
    }
  }

  
  return dp[nombres.length][cible];
}

void main() {
  print(trouverSousEnsemble([3, 34, 4, 12, 5, 2], 9)); // => true
  print(trouverSousEnsemble([3, 34, 4, 12, 5, 2], 30)); // => false
}

