import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> metrics = [
    {
      "title": "Freud Score",
      "value": 80,
      "status": "Healthy",
      "color": Color(0xFF9BB068),
      "icon": "assets/icons/heart.svg"
    },
    {
      "title": "Mood",
      "value": "Sad",
      "status": "Feeling Low",
      "color": Color(0xFFFE814B),
      "icon": "assets/icons/mood.svg"
    },
    {
      "title": "Journal",
      "value": 31,
      "status": "Entries",
      "color": Color(0xFFA18FFF),
      "icon": "assets/icons/journal.svg"
    },
  ];

  final List<Map<String, dynamic>> trackers = [
    {
      "title": "Mindful Hours",
      "value": "2.5h/8h",
      "icon": "assets/icons/time.svg",
      "color": Color(0xFF9BB068)
    },
    {
      "title": "Sleep Quality",
      "value": "Insomniac (~2h Avg)",
      "icon": "assets/icons/sleep.svg",
      "color": Color(0xFFA18FFF)
    },
    {
      "title": "Mindful Journal",
      "value": "64 Day Streak",
      "icon": "assets/icons/journal.svg",
      "color": Color(0xFFFE814B)
    },
    {
      "title": "Stress Level",
      "value": "Level 3 (Normal)",
      "icon": "assets/icons/stress.svg",
      "color": Color(0xFFFFC107)
    },
    {
      "title": "Mood Tracker",
      "value": "Neutral",
      "icon": "assets/icons/mood.svg",
      "color": Color(0xFF9BB068)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F3F2),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              SizedBox(height: 24),
              _searchBar(),
              SizedBox(height: 24),
              _sectionTitle("Mental Health Metrics"),
              SizedBox(height: 16),
              _metricsSection(),
              SizedBox(height: 36),
              _sectionTitle("Mindful Tracker"),
              SizedBox(height: 16),
              _trackerSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _header() {
    return Row(
      children: [
        CircleAvatar(radius: 24, backgroundImage: AssetImage("assets/profile.jpg")),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Harshita!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
            Row(
              children: [
                _badge("Pro Member", Icons.star, Color(0xFF9BB068)),
                SizedBox(width: 6),
                _badge("80%", Icons.favorite, Color(0xFF6D4C41)),
                SizedBox(width: 6),
                _badge("Happy", Icons.sentiment_satisfied, Color(0xFFFFC107)),
              ],
            )
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 20, backgroundColor: Colors.purple.shade100),
      ],
    );
  }

  Widget _badge(String text, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: color.withOpacity(0.2), borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(width: 4),
          Text(text, style: TextStyle(fontSize: 12, color: color)),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none, hintText: "Search anything..."))),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown.shade700),
    );
  }

  Widget _metricsSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: metrics.map((metric) => _metricCard(metric)).toList(),
      ),
    );
  }

  Widget _metricCard(Map<String, dynamic> metric) {
    return Container(
      width: 163,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: metric["color"],
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(color: metric["color"].withOpacity(0.3), blurRadius: 10, offset: Offset(0, 8))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(metric["icon"], width: 24, height: 24, color: Colors.white),
          SizedBox(height: 16),
          Text(metric["title"], style: TextStyle(fontSize: 14, color: Colors.white)),
          SizedBox(height: 8),
          Text("${metric["value"]}", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 4),
          Text(metric["status"], style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.8))),
        ],
      ),
    );
  }

  Widget _trackerSection() {
    return Column(
      children: trackers.map((tracker) => _trackerCard(tracker)).toList(),
    );
  }

  Widget _trackerCard(Map<String, dynamic> tracker) {
    return Container(
      width: double.infinity,
      height: 96,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))],
      ),
      child: Row(
        children: [
          SvgPicture.asset(tracker["icon"], width: 40, height: 40, color: tracker["color"]),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tracker["title"], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(height: 4),
              Text(tracker["value"], style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
            ],
          )
        ],
      ),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}