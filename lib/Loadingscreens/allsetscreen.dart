import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mentalhealth/HomeScreens/homescreen.dart';

class HealthScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9BB068),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Checkmark Icon
            const Icon(Icons.check_circle, color: Colors.white, size: 48),
            const SizedBox(height: 16),

            // Title
            const Text(
              "You’re all Set Up.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Your health score is:",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 24),

            // Circular Score with Waves
            Stack(
              alignment: Alignment.center,
              children: [
                // Outer Circle
                DottedBorder(
                  borderType: BorderType.Circle,
                  dashPattern: const [8, 4],
                  strokeWidth: 2,
                  color: Colors.white.withOpacity(0.5),
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Inner Circle with Waves
                ClipOval(
                  child: Container(
                    width: 180,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: CustomPaint(
                      painter: WavePainter(),
                    ),
                  ),
                ),

                // Health Score Text
                const Text(
                  "80",
                  style: TextStyle(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9BB068),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "You’re mentally stable. We’re redirecting you back to the home screen. Are you ready?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Mood Status
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "MOOD: ",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const Icon(Icons.sentiment_neutral, color: Colors.white),
                const SizedBox(width: 4),
                const Text(
                  "NEUTRAL",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // Button
            OutlinedButton(
              onPressed: () {
                // Navigate to Next Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Let’s Be Mindful",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Painter for Wavy Background
class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.green.shade200.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Path path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.4,
        size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.2,
        size.width * 1.0, size.height * 0.3);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.4,
        size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.6, 0,
        size.height * 0.3);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

// Next Screen for Debugging
class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Next Screen"),
        backgroundColor: const Color(0xFF9BB068),
      ),
      body: const Center(
        child: Text(
          "This is the next screen after the health score.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}