/*Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.*/
void main() {
  Grade grade = Grade(40);
  print('score: ${grade.score}, Pass: ${grade.isPass}');
}

class Grade {
  double _score;

  Grade(this._score);

  set score(double value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print('Invalid score');
    }
  }

  double get score => _score;
  bool get isPass => _score >= 50;
}
