import 'package:flutter/material.dart';
import 'package:mentalhealth/CommonFunctions/common_widgets.dart';
import 'package:mentalhealth/InitialAssesmentScreens/doctorconsultscreenquery.dart'; // Import your next screen

class SleepQualityRatingScreen extends StatefulWidget {
  const SleepQualityRatingScreen({super.key});

  @override
  State<SleepQualityRatingScreen> createState() => _SleepQualityRatingScreenState();
}

class _SleepQualityRatingScreenState extends State<SleepQualityRatingScreen> {
  double sliderValue = 0; // Default: Excellent (top)

  final List<Map<String, dynamic>> sleepLevels = [
    {"label": "Excellent", "hours": "7-9 HOURS", "emoji": "lib/images/sleep_excellent.png"},
    {"label": "Good", "hours": "6-7 HOURS", "emoji": "lib/images/sleep_good.png"},
    {"label": "Fair", "hours": "5 HOURS", "emoji": "lib/images/sleep_fair.png"},
    {"label": "Poor", "hours": "3-4 HOURS", "emoji": "lib/images/sleep_poor.png"},
    {"label": "Worst", "hours": "<3 HOURS", "emoji": "lib/images/sleep_worst.png"},
  ];

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
              "8 of 14",
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

            // Title
            const Text(
              "How would you rate your sleep quality?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Left, Center, Right
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Labels & Hours (Leftmost)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(sleepLevels.length, (index) {
                      bool isSelected = index == (sleepLevels.length - 1 - sliderValue.toInt());
                      return SizedBox(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sleepLevels[index]["label"]!,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? const Color(0xFF4E3321) : Colors.grey.shade400,
                              ),
                            ),
                            Text(
                              sleepLevels[index]["hours"]!,
                              style: TextStyle(
                                fontSize: 14,
                                color: isSelected ? const Color(0xFF4E3321) : Colors.grey.shade400,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),

                  // Slider Bar (Center)
                  SizedBox(
                    width: 60, // Enough space for knob to be outside
                    height: 443,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Background Grey Bar
                        Container(
                          width: 16,
                          height: 443,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(1234),
                          ),
                        ),

                        // Orange Filled Bar (Dynamic based on selection)
                        Positioned(
                          bottom: -18,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeOut,
                            width: 16,
                            height: ((sliderValue + 1) / sleepLevels.length) * 443,
                            decoration: BoxDecoration(
                              color: const Color(0xFFED7E1C),
                              borderRadius: BorderRadius.circular(1234),
                            ),
                          ),
                        ),

                        // Slider Knob (Outside the slider bar)
                        Positioned(
                          bottom: ((sliderValue) / (sleepLevels.length - 1)) * 443, // Correct alignment
                          child: GestureDetector(
                            onVerticalDragUpdate: (details) {
                              setState(() {
                                double newValue = sliderValue - details.primaryDelta! / 88;
                                sliderValue = newValue.clamp(0, sleepLevels.length - 1);
                              });
                            },
                            onVerticalDragEnd: (details) {
                              setState(() {
                                sliderValue = (sliderValue).roundToDouble();
                              });
                            },
                            child: Container(
                              width: 70, // Bigger knob
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: const Color(0xFFED7E1C),
                                border: Border.all(color: Colors.white, width: 4),
                              ),
                              child: const Icon(Icons.swap_vert, color: Colors.white, size: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Mood Icons (Rightmost)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(sleepLevels.length, (index) {
                      bool isSelected = index == (sleepLevels.length - 1 - sliderValue.toInt());
                      return Image.asset(
                        sleepLevels[index]["emoji"]!,
                        width: 40,
                        color: isSelected ? null : Colors.grey.shade400, // Highlight selected emoji
                      );
                    }),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Continue Button (Bottom)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DoctorConsultScreen()), // Navigate to next screen
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4E3321),
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