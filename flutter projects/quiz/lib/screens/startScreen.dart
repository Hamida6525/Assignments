import 'package:flutter/material.dart';
import 'package:quiz/background_color.dart';
import 'package:quiz/screens/quizScreen.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColor(
        child: SafeArea(
        
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  'Good morning,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    //fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'New topic is waiting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    //fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w400,

                  ),
                ),
                GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Quizscreen()),
                  );
                },
                child: Center(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 13,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Start Quiz',
                          style: TextStyle(
                            color: const Color(0xFF2B0062),
                            fontSize: 18,
                            //fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            
                SizedBox(height: 60),
            ]),
            ),
          ),
        ),
      );
  }
}

//         child: Padding(
//           padding: const EdgeInsets.only(
//             top: 60,
//             left: 24,
//             right: 24,
//             bottom: 40,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Good morning,',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontFamily: 'Gilroy',
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'New topic is waiting',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 34,
//                       fontFamily: 'Gilroy',
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Quizscreen()),
//                   );
//                 },
//                 child: Center(
//                   child: Container(
//                     width: 400,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 26,
//                       vertical: 13,
//                     ),
//                     decoration: ShapeDecoration(
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Start Quiz',
//                           style: TextStyle(
//                             color: const Color(0xFF2B0062),
//                             fontSize: 18,
//                             fontFamily: 'Gilroy',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
