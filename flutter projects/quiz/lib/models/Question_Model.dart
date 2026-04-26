class QuestionModel {
  final String questionNumber;
  final String questionImage;
  final String question;
  final List<String> answer;
  final List<String> correct;

  QuestionModel({
    required this.questionNumber,
    required this.questionImage,
    required this.answer,
    required this.correct,
    required this.question,
  });
}

List<QuestionModel> qustions() {
  return [
    QuestionModel(
      questionNumber: 'Question 1',
      question:
          'How would you describe\nyour level of satisfaction\nwith the healthcare\nsystem?',
      answer: ['Very Satisfied', 'Satisfied', 'Neutral', 'Dissatisfied'],
      correct: ['Neutral'], questionImage: '',
    ),
    QuestionModel(
      questionNumber: 'Question 2',
      question: 'What vitamins do you\ntake?',
      answer: ['Vitamin A', 'Vitamin B', 'Vitamin C', 'Vitamin D'],
      correct: ['Vitamin C', 'Vitamin D'],
      questionImage: '',
    ),
    QuestionModel(
      questionNumber: 'Question 3',
      question: 'What color is the sky?',
      answer: ['Blue', 'Green', 'Red', 'Yellow'],
      correct: ['Blue'],
      questionImage: '',
    ),
    QuestionModel(
      questionNumber: 'Question 4',
      question: 'what ',
      answer: ['5', '6', '7', '8'],
      correct: ['7'],
      questionImage: '',
    ),
  ];
}
