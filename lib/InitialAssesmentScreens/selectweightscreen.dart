import 'package:flutter/material.dart';
import 'package:mentalhealth/InitialAssesmentScreens/healthgoalscreeen.dart';

class SelectWeightScreen extends StatefulWidget {
  const SelectWeightScreen({super.key});

  @override
  State<SelectWeightScreen> createState() => _SelectWeightScreenState();
}

class _SelectWeightScreenState extends State<SelectWeightScreen> {
  final ScrollController _scrollController = ScrollController();
  double selectedWeight = 70.0;
  bool isKg = true;
  static const double itemWidth = 20.0; // Space per tick
  static const double minWeight = 30.0;
  static const double maxWeight = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollToWeight(selectedWeight);
    _scrollController.addListener(() {
      _updateWeight();
    });
  }

  void _scrollToWeight(double weight) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo((weight - minWeight) * itemWidth);
      }
    });
  }

  void _updateWeight() {
    double newWeight = (_scrollController.offset / itemWidth) + minWeight;
    setState(() {
      selectedWeight = newWeight.clamp(minWeight, maxWeight);
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
              "4 of 14",
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
              "What’s your weight?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
            ),
            const SizedBox(height: 30),

            // Unit Switcher (kg / lbs)
            Container(
              width: 343,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _unitButton("kg", isKg),
                  _unitButton("lbs", !isKg),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Selected Weight Display
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "${selectedWeight.toInt()} ",
                    style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
                  ),
                  TextSpan(
                    text: isKg ? "kg" : "lbs",
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF736B66)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Weight Scale with Infinite Scrolling
            SizedBox(
              height: 120,
              width: 343,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Major & Minor Tick Marks
                  Positioned.fill(
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: ((maxWeight - minWeight) * 10).toInt(),
                      itemBuilder: (context, index) {
                        bool isMajorTick = index % 10 == 0;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              isMajorTick
                                  ? "lib/images/scale_tick.png"
                                  : "lib/images/minor_tick.png",
                              width: isMajorTick ? 10 : 5,
                              height: isMajorTick ? 50 : 25,
                            ),
                            if (isMajorTick)
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "${(index / 10 + minWeight).toInt()}",
                                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),

                  // Fixed Green Indicator
                  Positioned(
                    bottom: 10,
                    child: Image.asset(
                      "lib/images/green_scale.png",
                      width: 20,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Continue Button
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HealthGoalScreen()),
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

  // Unit Selection Button
  Widget _unitButton(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isKg = label == "kg";
          selectedWeight = isKg ? 70 : 154;
          _scrollToWeight(selectedWeight);
        });
      },
      child: Container(
        width: 160,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFED7E1C) : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.grey.shade700,
          ),
        ),
      ),
    );
  }
}