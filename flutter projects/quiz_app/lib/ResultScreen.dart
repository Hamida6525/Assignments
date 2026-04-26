// import 'package:flutter/material.dart';
// import 'package:quiz_app/StartScreen.dart';


// class ResultScreen extends StatelessWidget {
//   // Score passed from question screen
//   final int score;
//   final int total;

//   const ResultScreen({super.key, required this.score, required this.total});

//   @override
//   Widget build(BuildContext context) {
//     // Message based on score
//     String message;
//     if (score == total) {
//       message = '🎉 Perfect Score!';
//     } else if (score >= total / 2) {
//       message = '👍 Good Job!';
//     } else {
//       message = '😅 Keep Practicing!';
//     }

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

//         child: Center(
//           child: Padding(
//             padding: EdgeInsets.all(24),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [

//                 // ── Title ─────────────────────────────
//                 Text(
//                   'Quiz Completed!',
//                   style: TextStyle(
//                     color: Color(0xFF8B8B9E),
//                     fontSize: 18,
//                   ),
//                 ),

//                 SizedBox(height: 20),

//                 // ── Score number ──────────────────────
//                 Text(
//                   '$score/$total',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 80,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 10),

//                 // ── Message ───────────────────────────
//                 Text(
//                   message,
//                   style: TextStyle(
//                     color: Colors.purpleAccent,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),

//                 SizedBox(height: 60),

//                 // ── Play Again button ─────────────────
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Go back to start screen
//                       Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(builder: (context) => StartScreen()),
//                         (route) => false,
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                     ),
//                     child: Text(
//                       'Play Again',
//                       style: TextStyle(
//                         color: Color(0xFF1A1B3D),
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }