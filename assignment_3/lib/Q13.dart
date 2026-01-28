/* Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. 
Then use a switch statement to print a message for each grade.*/

void main() {
  int mark = 70; 
  String grade;

  // Determine grade based on mark
  if (mark >= 90) {
    grade = 'A';
  } else if (mark >= 80) {
    grade = 'B';
  } else if (mark >= 70) {
    grade = 'C';
  } else {
    grade = 'D';
  }
  switch (grade) {
    case 'A':
      print('pass');
      break;
    case 'B':
      print('very good');
      break;
    case 'C':
      print('good');
      break;
    case 'D':
      print('fail');
      break;
    default:
      print('Invalid grade.');
  }
}