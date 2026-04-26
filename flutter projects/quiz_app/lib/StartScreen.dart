// import 'package:flutter/material.dart';
// import 'package:quiz_app/QuestionScreen.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: 176,
//         height: 176,
//         child: Stack(
//           children: [
//             Positioned(
//               left: 0,
//               top: 0,
//               child: Container(
//                 width: 176,
//                 height: 176,
//                 decoration: ShapeDecoration(
//                   color: const Color(0xFFA738FF),
//                   shape: OvalBorder(),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 11.67,
//               top: 11.67,
//               child: Container(
//                 width: 152.66,
//                 height: 152.66,
//                 decoration: ShapeDecoration(
//                   color: Colors.white,
//                   shape: OvalBorder(),
//                 ),

//                 child: Column(
//                   children: [
//                     // ── Empty space at top ─────────────────────
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           // "Good morning," small gray text
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 24),
//                             child: Text(
//                               'Good morning,',
//                               style: TextStyle(
//                                 color: Color(0xFF8B8B9E),
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ),

//                           SizedBox(height: 10),

//                           // "New topic is waiting" big white text
//                           Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 24),
//                             child: Text(
//                               'New topic\nis waiting',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     // ── Start Quiz button ───────────────────────
//                     Padding(
//                       padding: EdgeInsets.all(24),
//                       child: SizedBox(
//                         width: double.infinity,
//                         height: 56,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Go to question screen
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //     builder: (context) => QuestionScreen(),
//                             //   ),
//                             // );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                           ),
//                           child: Text(
//                             'Start Quiz',
//                             style: TextStyle(
//                               color: Color(0xFF1A1B3D),
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF111529)),
      body: Center(child: Text("Start Screen", style: TextStyle(fontSize: 30))),
    );
  }
}
