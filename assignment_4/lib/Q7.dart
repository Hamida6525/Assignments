/*Create a program with the scores [10, 0, 20, 30].
 Ignore the zeros, add the other numbers together,
 and print the total.*/

void main() {
  List<int> scores = [10, 0, 20, 30];
  Set<int> uniqueScores = scores.toSet();

  int total = 0;
  for (int score in uniqueScores) {
    if (score != 0) {
      total + score;
    }
  }
  print("Total score (ignoring zeros): $total");
}
