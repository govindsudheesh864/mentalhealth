import 'package:flutter/material.dart';
import 'package:mentalhealth/NotificationScreens/notificationsetupscreen.dart';

class ProfileSetupScreen extends StatefulWidget {
  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _selectedGender = 'Trans Female';
  String _selectedLocation = 'Tokyo, Japan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F2),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Green Header with Profile Image
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Color(0xFF9BB068),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 60),
                    const Text(
                      "Profile Setup",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: 56,
                          backgroundImage: AssetImage('assets/images/profile.png'),
                        ),
                        CircleAvatar(
                          backgroundColor: const Color(0xFF4E3321),
                          radius: 20,
                          child: IconButton(
                            icon: const Icon(Icons.link, color: Colors.white),
                            onPressed: () {
                              // Implement image upload logic
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),

            // Input Fields
            _buildInputField(label: 'Full Name', icon: Icons.person, controller: _nameController),
            const SizedBox(height: 16),
            _buildInputField(label: 'Email Address', icon: Icons.email, controller: _emailController),
            const SizedBox(height: 16),
            _buildPasswordField(label: 'Password', icon: Icons.lock, controller: _passwordController),
            const SizedBox(height: 16),

            // Gender Selection
            _buildDropdownField(
              label: 'Gender',
              icon: Icons.transgender,
              value: _selectedGender,
              items: ['Male', 'Female', 'Trans Male', 'Trans Female', 'Non-binary'],
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
            ),
            const SizedBox(height: 16),

            // Location Selection
            _buildDropdownField(
              label: 'Location',
              icon: Icons.location_on,
              value: _selectedLocation,
              items: ['Tokyo, Japan', 'New York, USA', 'London, UK', 'Paris, France'],
              onChanged: (value) {
                setState(() {
                  _selectedLocation = value!;
                });
              },
            ),

            const SizedBox(height: 40),

            // Continue Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationSetupScreen()));
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
                  Text("Continue", style: TextStyle(fontSize: 18, color: Colors.white)),
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

  // Helper method to build input fields
  Widget _buildInputField({required String label, required IconData icon, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 14, color: Color(0xFF4E3321))),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Color(0xFF4E3321)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32), borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build password field
  Widget _buildPasswordField({required String label, required IconData icon, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 14, color: Color(0xFF4E3321))),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(icon, color: Color(0xFF4E3321)),
              suffixIcon: Icon(Icons.visibility_off, color: Color(0xFF4E3321)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32), borderSide: BorderSide.none),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build dropdown fields
  Widget _buildDropdownField({
    required String label,
    required IconData icon,
    required String value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 14, color: Color(0xFF4E3321))),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              underline: SizedBox(),
              icon: Icon(Icons.arrow_drop_down, color: Color(0xFF4E3321)),
              items: items.map((item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: onChanged,
            ),
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Next Page",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4E3321)),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: const Text(
          "Welcome to the Next Screen!",
          style: TextStyle(fontSize: 22, color: Color(0xFF4E3321)),
        ),
      ),
    );
  }
}