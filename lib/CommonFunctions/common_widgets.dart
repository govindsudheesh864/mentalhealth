import 'package:flutter/material.dart';

/// A reusable styled button with text and optional icon.
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final double? width;

  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity, // Default to full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff4e3321),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            if (icon != null) ...[
              const SizedBox(width: 8),
              Icon(icon, color: Colors.white),
            ],
          ],
        ),
      ),
    );
  }
}

/// A reusable text widget for headings.
class CustomHeading extends StatelessWidget {
  final String text;

  const CustomHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        color: Color(0xff4e3321),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// A reusable text widget for subheadings.
class CustomSubheading extends StatelessWidget {
  final String text;

  const CustomSubheading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 18,
        color: Color(0xff736a66),
      ),
    );
  }
}

/// A reusable header widget with a back button, title, and step tracker.
class CustomHeader extends StatelessWidget {
  final String title;
  final int step;
  final int totalSteps;
  final bool showBackButton;
  final VoidCallback? onBack;

  const CustomHeader({
    Key? key,
    required this.title,
    required this.step,
    required this.totalSteps,
    this.showBackButton = true,
    this.onBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (showBackButton)
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
              onPressed: onBack ?? () => Navigator.pop(context),
            ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff4e3321)),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Text(
              '$step of $totalSteps',
              style: const TextStyle(fontSize: 14, color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}