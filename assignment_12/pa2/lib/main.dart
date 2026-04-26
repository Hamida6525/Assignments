import 'package:flutter/material.dart';
import 'package:pa2/bottomButtons.dart';
import 'package:pa2/featuresList.dart';
import 'package:pa2/heroBanner.dart';
import 'package:pa2/quickStats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7C5CBF)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3EFF8),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3EFF8),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeroBanner(),
                    const SizedBox(height: 28),

                    const Text(
                      'Quick Stats',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 14),
                    QuickStats(),
                    const SizedBox(height: 28),

                    // Features
                    const Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 14),
                    FeaturesList(),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            Bottombuttons(),
          ],
        ),
      ),
    );
  }
}
