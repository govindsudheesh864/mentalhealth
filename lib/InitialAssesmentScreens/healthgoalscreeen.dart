import 'package:flutter/material.dart';
import 'package:mentalhealth/InitialAssesmentScreens/ratestresslevelscreen.dart';

class HealthGoalScreen extends StatefulWidget {
  const HealthGoalScreen({super.key});

  @override
  State<HealthGoalScreen> createState() => _HealthGoalScreenState();
}

class _HealthGoalScreenState extends State<HealthGoalScreen> {
  List<String> selectedGoals = [];

  final List<Map<String, dynamic>> goals = [
    {"label": "I wanna reduce stress", "icon": Icons.favorite_border},
    {"label": "I wanna try AI Therapy", "icon": Icons.smart_toy_outlined},
    {"label": "I want to cope with trauma", "icon": Icons.flag_outlined},
    {"label": "I want to be a better person", "icon": Icons.sentiment_satisfied_alt_outlined},
    {"label": "Just trying out the app, mate!", "icon": Icons.shopping_bag_outlined},
  ];

  void _toggleSelection(String goal) {
    setState(() {
      if (selectedGoals.contains(goal)) {
        selectedGoals.remove(goal);
      } else {
        selectedGoals.add(goal);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5EB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Assessment",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFD5C4B1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              "1 of 14",
              style: TextStyle(fontSize: 14, color: Color(0xFF4E3321)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            // Question Text
            const Text(
              "What’s your health goal for today?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Goal Selection List
            Column(
              children: goals.map((goal) {
                bool isSelected = selectedGoals.contains(goal["label"]);
                return GestureDetector(
                  onTap: () => _toggleSelection(goal["label"]),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xFF9BB168) : Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      border: Border.all(
                        color: isSelected ? const Color(0xFF9BB168) : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(goal["icon"], size: 24, color: isSelected ? Colors.white : const Color(0xFF4E3321)),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            goal["label"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: isSelected ? Colors.white : const Color(0xFF4E3321),
                            ),
                          ),
                        ),
                        Icon(
                          isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                          size: 24,
                          color: isSelected ? Colors.white : const Color(0xFF4E3321),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Continue Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedGoals.isNotEmpty
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RateStressLevelScreen()),
                    );
                  }
                      : null, // Disable if no goal selected
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedGoals.isNotEmpty ? const Color(0xFF4E3321) : Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}