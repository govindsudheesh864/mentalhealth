import 'package:flutter/material.dart';
import 'package:mentalhealth/Loadingscreens/compilingdatascreen.dart';

class NotificationSetupScreen extends StatefulWidget {
  @override
  _NotificationSetupScreenState createState() =>
      _NotificationSetupScreenState();
}

class _NotificationSetupScreenState extends State<NotificationSetupScreen> {
  bool chatbotNotification = true;
  bool wellnessNotification = false;
  bool communityNotification = true;

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
          "Notification Setup",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          // Illustration Image
          SizedBox(
            height: 200,
            child: Image.asset(
              'lib/images/notification_vector.png', // Add the appropriate asset
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 30),

          // Notification Options
          _buildNotificationOption(
            "Chatbot Notification",
            chatbotNotification,
            "lib/images/chatbot_icon.png",
                (value) {
              setState(() {
                chatbotNotification = value;
              });
            },
          ),
          _buildNotificationOption(
            "Wellness Notification",
            wellnessNotification,
            "lib/images/wellness_icon.png",
                (value) {
              setState(() {
                wellnessNotification = value;
              });
            },
          ),
          _buildNotificationOption(
            "Community Notification",
            communityNotification,
            "lib/images/community_icon.png",
                (value) {
              setState(() {
                communityNotification = value;
              });
            },
          ),

          const SizedBox(height: 30),

          // Continue Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CompilingDataScreen()),
              );
            },
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

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Widget for each notification option
  Widget _buildNotificationOption(
      String title, bool isEnabled, String iconPath, Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                iconPath,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF4E3321),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Switch(
            value: isEnabled,
            onChanged: onChanged,
            activeColor: const Color(0xFF9BB168),
          ),
        ],
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
      body: const Center(
        child: Text(
          "Next Screen Placeholder",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}