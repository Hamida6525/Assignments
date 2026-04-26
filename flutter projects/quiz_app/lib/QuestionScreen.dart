// import 'package:flutter/material.dart';
// import 'package:quiz_app/ResultScreen.dart';


// class QuestionScreen extends StatefulWidget {
//   const QuestionScreen({super.key});

//   @override
//   _QuestionScreenState createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<QuestionScreen> {

//   // ── Quiz questions list ─────────────────────────────
//   List<Map<String, dynamic>> questions = [
//     {
//       'question': 'What is the capital of France?',
//       'answers': ['London', 'Paris', 'Berlin', 'Rome'],
//       'correct': 'Paris',
//     },
//     {
//       'question': 'Which planet is the largest?',
//       'answers': ['Earth', 'Mars', 'Jupiter', 'Saturn'],
//       'correct': 'Jupiter',
//     },
//     {
//       'question': 'How many sides does a triangle have?',
//       'answers': ['2', '3', '4', '5'],
//       'correct': '3',
//     },
//     {
//       'question': 'What color is the sky on a clear day?',
//       'answers': ['Green', 'Red', 'Blue', 'Yellow'],
//       'correct': 'Blue',
//     },
//     {
//       'question': 'Which animal is known as the king of the jungle?',
//       'answers': ['Tiger', 'Lion', 'Elephant', 'Cheetah'],
//       'correct': 'Lion',
//     },
//   ];

//   // ── Variables ───────────────────────────────────────
//   int currentIndex = 0;   // Which question we are on
//   int score = 0;          // How many correct answers
//   String selected = '';   // Which answer the user picked

//   // ── When user taps an answer ────────────────────────
//   void checkAnswer(String answer) {
//     // Don't allow picking again
//     if (selected != '') return;

//     setState(() {
//       selected = answer;

//       // Check if correct
//       if (answer == questions[currentIndex]['correct']) {
//         score++;
//       }
//     });

//     // Wait 1 second then go to next question
//     Future.delayed(Duration(seconds: 1), () {
//       if (currentIndex + 1 < questions.length) {
//         // Next question
//         setState(() {
//           currentIndex++;
//           selected = '';
//         });
//       } else {
//         // Quiz is done — go to result screen
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ResultScreen(
//               score: score,
//               total: questions.length,
//             ),
//           ),
//         );
//       }
//     });
//   }

//   // ── Answer button color ─────────────────────────────
//   Color getColor(String answer) {
//     if (selected == '') return Color(0xFF1D1E3D); // Not picked yet
//     if (answer == questions[currentIndex]['correct']) return Colors.green;
//     if (answer == selected) return Colors.red;
//     return Color(0xFF1D1E3D);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Current question
//     var q = questions[currentIndex];

//     return Scaffold(
//       body: Container(
//         // Same purple gradient background
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF1A1B3D),
//               Color(0xFF4A2E6E),
//             ],
//           ),
//         ),

//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.all(24),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [

//                 // ── Top: question count ───────────────
//                 Text(
//                   'Question ${currentIndex + 1} of ${questions.length}',
//                   style: TextStyle(
//                     color: Color(0xFF8B8B9E),
//                     fontSize: 14,
//                   ),
//                 ),

//                 SizedBox(height: 8),

//                 // ── Progress bar ──────────────────────
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(4),
//                   child: LinearProgressIndicator(
//                     value: (currentIndex + 1) / questions.length,
//                     minHeight: 6,
//                     backgroundColor: Color(0xFF2E2E4E),
//                     valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
//                   ),
//                 ),

//                 SizedBox(height: 40),

//                 // ── Score ─────────────────────────────
//                 Text(
//                   'Score: $score',
//                   style: TextStyle(
//                     color: Colors.white70,
//                     fontSize: 16,
//                   ),
//                 ),

//                 SizedBox(height: 30),

//                 // ── Question text ─────────────────────
//                 Text(
//                   q['question'],
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 26,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 40),

//                 // ── Answer buttons ────────────────────
//                 ...List.generate(q['answers'].length, (i) {
//                   String answer = q['answers'][i];
//                   return Padding(
//                     padding: EdgeInsets.only(bottom: 14),
//                     child: GestureDetector(
//                       onTap: () => checkAnswer(answer),
//                       child: Container(
//                         width: double.infinity,
//                         padding: EdgeInsets.all(18),
//                         decoration: BoxDecoration(
//                           color: getColor(answer),
//                           borderRadius: BorderRadius.circular(14),
//                           border: Border.all(
//                             color: Colors.white24,
//                             width: 1,
//                           ),
//                         ),
//                         child: Text(
//                           answer,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 }),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }