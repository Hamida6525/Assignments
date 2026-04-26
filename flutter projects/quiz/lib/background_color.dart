import 'package:flutter/material.dart';

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({super.key, required this.child});
  
    final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF111529), Color(0xFF5A4B76)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child:Image.asset(
              'assets/GRADINETx4.png',
              fit: BoxFit.cover,
            ),),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
