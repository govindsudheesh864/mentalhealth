import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mentalhealth/Loadingscreens/allsetscreen.dart';

class CompilingDataScreen extends StatefulWidget {
  @override
  _CompilingDataScreenState createState() => _CompilingDataScreenState();
}

class _CompilingDataScreenState extends State<CompilingDataScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Start loading animation
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    // Wait for 5 seconds and navigate to next screen
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HealthScoreScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFE814B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Loading Icon
            ScaleTransition(
              scale: _animation,
              child: Image.asset(
                'lib/images/loading_icon.png', // Replace with your actual asset
                width: 72,
                height: 72,
              ),
            ),
            const SizedBox(height: 24),

            // "Compiling Data..." Text
            const Text(
              "Compiling Data...",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 12),

            // Subtitle Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Please wait... We’re calculating the data based on your assessment inputs.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy Next Screen
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: const Center(
        child: Text(
          "Next Screen Placeholder",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}