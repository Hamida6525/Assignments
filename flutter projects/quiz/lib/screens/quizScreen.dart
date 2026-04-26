import 'package:flutter/material.dart';
import 'package:quiz/background_color.dart';
import 'package:quiz/models/Question_Model.dart';
import 'package:quiz/widgets/index.dart';

class Quizscreen extends StatefulWidget {
  const Quizscreen({super.key});

  @override
  State<Quizscreen> createState() => _QuizscreenState();
}

class _QuizscreenState extends State<Quizscreen> {
  late List<QuestionModel> questions;
  int currentQuestion = 0;
  List<int> selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    questions = qustions();
  }

  // Determine if current question allows multiple choices
  bool get isMultiChoice => questions[currentQuestion].correct.length > 1;

  // Check if user has selected at least one answer
  bool get hasSelectedAnswer => selectedAnswers.isNotEmpty;

  void nextQuestion() {
    if (selectedAnswers.isNotEmpty) {
      setState(() {
        currentQuestion++;
        selectedAnswers = [];
      });

      if (currentQuestion >= questions.length) {
        // Handle quiz completion
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Quiz completed!')),
        );
        currentQuestion = 0;
        selectedAnswers = [];
      }
    }
  }

  void previousQuestion() {
    if (currentQuestion > 0) {
      setState(() {
        currentQuestion--;
        selectedAnswers = [];
      });
    }
  }

  void toggleAnswer(int index) {
    setState(() {
      if (isMultiChoice) {
        // Multiple choice: toggle selection
        if (selectedAnswers.contains(index)) {
          selectedAnswers.remove(index);
        } else {
          selectedAnswers.add(index);
        }
      } else {
        // Single choice: replace selection
        selectedAnswers = [index];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestionModel = questions[currentQuestion];
    final isLastQuestion = currentQuestion == questions.length - 1;

    return Scaffold(
      body: BackgroundColor(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question Header with badge
                QuestionHeader(
                  questionNumber: currentQuestion,
                  totalQuestions: questions.length,
                ),

                const SizedBox(height: 32),

                // Question Title
                QuestionTitle(question: currentQuestionModel.question),

                const SizedBox(height: 16),

                // Question Progress
                QuestionProgress(
                  currentQuestion: currentQuestion,
                  totalQuestions: questions.length,
                ),

                const SizedBox(height: 32),

                // Answer Options
                AnswerList(
                  answers: currentQuestionModel.answer,
                  selectedIndices: selectedAnswers,
                  isMultiChoice: isMultiChoice,
                  onAnswerSelected: toggleAnswer,
                ),

                const Spacer(),

                // Navigation Buttons
                NavigationButtons(
                  onBack: currentQuestion > 0 ? previousQuestion : null,
                  onNext: hasSelectedAnswer ? nextQuestion : null,
                  nextButtonLabel:
                      isLastQuestion ? 'Finish' : 'Next',
                  nextEnabled: hasSelectedAnswer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
