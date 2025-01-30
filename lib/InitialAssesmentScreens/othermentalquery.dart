import 'package:flutter/material.dart';
import 'package:mentalhealth/InitialAssesmentScreens/expressionwritingscreen.dart';

class MentalHealthSymptomsScreen extends StatefulWidget {
  @override
  _MentalHealthSymptomsScreenState createState() =>
      _MentalHealthSymptomsScreenState();
}

class _MentalHealthSymptomsScreenState
    extends State<MentalHealthSymptomsScreen> {
  TextEditingController _controller = TextEditingController();
  List<String> enteredSymptoms = [];
  List<String> suggestedSymptoms = [
    "Anxiety",
    "Fatigue",
    "Irritability",
    "Feeling Sad",
    "Overthinking"
  ];

  void _onTextChanged(String value) {
    if (value.endsWith(' ')) {
      String symptom = value.trim();
      if (symptom.isNotEmpty && !enteredSymptoms.contains(symptom)) {
        setState(() {
          enteredSymptoms.add(symptom);
          _controller.clear();
        });
      }
    }
  }

  void _addSuggestedSymptom(String symptom) {
    if (!enteredSymptoms.contains(symptom)) {
      setState(() {
        enteredSymptoms.add(symptom);
      });
    }
  }

  void _removeSymptom(String symptom) {
    setState(() {
      enteredSymptoms.remove(symptom);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Assessment",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
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
              "11 of 14",
              style: TextStyle(fontSize: 14, color: Color(0xFF4E3321)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            const Text(
              "Do you have other mental health symptoms?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4E3321),
              ),
            ),

            const SizedBox(height: 20),

            Image.asset(
              "lib/images/mental_health.png",
              width: 286,
              height: 220,
            ),

            const SizedBox(height: 20),

            // Text Input Field
            Container(
              width: 343,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: const Color(0xFF9BB168)),
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  ...enteredSymptoms.map((symptom) => _buildSymptomChip(symptom)),
                  SizedBox(
                    width: 220,
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type symptom...",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onChanged: _onTextChanged,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_controller.text.trim().isNotEmpty) {
                        _onTextChanged(_controller.text + " ");
                      }
                    },
                    child: const Icon(Icons.add_circle,
                        color: Color(0xFF9BB168),
                        size: 30),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Suggested Symptoms
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: suggestedSymptoms
                  .map((symptom) => _buildSuggestionChip(symptom))
                  .toList(),
            ),

            const SizedBox(height: 30),

            // Continue Button
            ElevatedButton(
              onPressed: enteredSymptoms.isNotEmpty
                  ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpressionAnalysisScreen()),
                );
              }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4E3321),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1000),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildSymptomChip(String symptom) {
    return GestureDetector(
      onTap: () {
        _controller.text = symptom;
        setState(() {
          enteredSymptoms.remove(symptom);
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF9BB168),
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              symptom,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: () => _removeSymptom(symptom),
              child: const Icon(Icons.close, color: Colors.white, size: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestionChip(String symptom) {
    return GestureDetector(
      onTap: () => _addSuggestedSymptom(symptom),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF2F5EB),
          borderRadius: BorderRadius.circular(32),
        ),
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Text(
          symptom,
          style: const TextStyle(
            color: Color(0xFF9BB168),
            fontSize: 14,
          ),
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
      backgroundColor: const Color(0xFFF7F4F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF4E3321)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Next Screen",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "This is the next screen!",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
      ),
    );
  }
}