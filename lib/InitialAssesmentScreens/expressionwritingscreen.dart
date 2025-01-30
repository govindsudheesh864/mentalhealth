import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class ExpressionAnalysisScreen extends StatefulWidget {
  @override
  _ExpressionAnalysisScreenState createState() =>
      _ExpressionAnalysisScreenState();
}

class _ExpressionAnalysisScreenState extends State<ExpressionAnalysisScreen> {
  TextEditingController _textController = TextEditingController();
  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _recordedText = '';

  void _startListening() async {
    bool available = await _speech.initialize(
      onStatus: (status) {
        if (status == "done") {
          setState(() {
            _isListening = false;
          });
        }
      },
    );

    if (available) {
      setState(() {
        _isListening = true;
      });
      _speech.listen(
        onResult: (result) {
          setState(() {
            _recordedText = result.recognizedWords;
            _textController.text = _recordedText;
          });
        },
      );
    }
  }

  void _stopListening() {
    _speech.stop();
    setState(() {
      _isListening = false;
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
              "14 of 14",
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
              "Expression Analysis",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4E3321),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Freely write down anything that's on your mind. Dr Freud.ai is here to listen...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF736A66)),
            ),

            const SizedBox(height: 20),

            // Text Input Container
            Container(
              width: 343,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: const Color(0xFF4E3321)),
              ),
              child: TextField(
                controller: _textController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Start typing or use voice...",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Voice Button
            ElevatedButton.icon(
              onPressed: _isListening ? _stopListening : _startListening,
              icon: Icon(
                _isListening ? Icons.mic_off : Icons.mic,
                color: Colors.white,
              ),
              label: Text(
                _isListening ? "Stop Recording" : "Use Voice Instead",
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9BB168),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),

            const SizedBox(height: 30),

            // Continue Button
            ElevatedButton(
              onPressed: _textController.text.isNotEmpty
                  ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThankYouScreen(),
                  ),
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
}

// Dummy Thank You Screen
class ThankYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Assessment Complete",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Thank you for sharing your thoughts!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
      ),
    );
  }
}