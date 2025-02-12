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
      // Use the custom tab bar widget as the bottom navigation bar:
      bottomNavigationBar: CustomTabBar(
        onTabSelected: (index) {
          // Handle tab selection (e.g. navigate or update state)
          print("Tab $index selected");
        },
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        CircleAvatar(
            radius: 24, backgroundImage: AssetImage("assets/profile.jpg")),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Harshita!",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
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
        CircleAvatar(
            radius: 20, backgroundColor: Colors.purple.shade100),
      ],
    );
  }

  Widget _badge(String text, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)),
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
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search anything..."),
              )),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.brown.shade700),
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
        boxShadow: [
          BoxShadow(
              color: metric["color"].withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 8))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(metric["icon"],
              width: 24, height: 24, color: Colors.white),
          SizedBox(height: 16),
          Text(metric["title"],
              style: TextStyle(fontSize: 14, color: Colors.white)),
          SizedBox(height: 8),
          Text("${metric["value"]}",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(height: 4),
          Text(metric["status"],
              style: TextStyle(
                  fontSize: 14, color: Colors.white.withOpacity(0.8))),
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
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 4))
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(tracker["icon"],
              width: 40, height: 40, color: tracker["color"]),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tracker["title"],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(height: 4),
              Text(tracker["value"],
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700)),
            ],
          )
        ],
      ),
    );
  }
}

/// A custom bottom tab bar that uses the provided SVG as its background
/// and overlays invisible tap areas for three tabs.
class CustomTabBar extends StatelessWidget {
  final Function(int) onTabSelected;

  const CustomTabBar({Key? key, required this.onTabSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The SVG was designed for a 375x128 viewBox.
    // Adjust the container height (and overlay positions) as needed.
    return Container(
      height: 128,
      child: Stack(
        children: [
          // Display the SVG background.
          Positioned.fill(
            child: SvgPicture.string(
              _customTabBarSvg,
              fit: BoxFit.fill,
            ),
          ),
          // Left tab (approximate area).
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 120,
            child: GestureDetector(
              onTap: () => onTabSelected(0),
              behavior: HitTestBehavior.translucent,
            ),
          ),
          // Central floating action button area.
          // (The SVG places the central button at x=156, y=16 with size 64x64.)
          Positioned(
            left: 156,
            top: 16,
            width: 64,
            height: 64,
            child: GestureDetector(
              onTap: () => onTabSelected(1),
              behavior: HitTestBehavior.translucent,
            ),
          ),
          // Right tab (approximate area).
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 120,
            child: GestureDetector(
              onTap: () => onTabSelected(2),
              behavior: HitTestBehavior.translucent,
            ),
          ),
        ],
      ),
    );
  }
}

const String _customTabBarSvg = '''
<svg width="375" height="128" viewBox="0 0 375 128" fill="none" xmlns="http://www.w3.org/2000/svg">
  <g filter="url(#filter0_d_22_3320)">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M160.131 76.6934C147.454 64.3789 133.673 48 116 48H40C17.9086 48 0 65.9086 0 88C0 110.091 17.9086 128 40 128H335C357.091 128 375 110.091 375 88C375 65.9086 357.091 48 335 48H260C242.327 48 228.546 64.3789 215.869 76.6934C208.666 83.6912 198.836 88 188 88C177.164 88 167.334 83.6912 160.131 76.6934Z" fill="white"/>
  </g>
  <rect x="16" y="64" width="48" height="48" rx="24" fill="#F7F4F2"/>
  <path d="M31 86L37.1716 79.8284C38.7337 78.2663 41.2663 78.2663 42.8284 79.8284L49 86" stroke="#4B3425" stroke-width="2" stroke-linejoin="round"/>
  <path d="M34 83V90C34 93.3137 36.6863 96 40 96V96C43.3137 96 46 93.3137 46 90V83" stroke="#4B3425" stroke-width="2" stroke-linejoin="round"/>
  <rect x="38" y="88" width="4" height="4" rx="2" stroke="#4B3425" stroke-width="2" stroke-linejoin="round"/>
  <path d="M117 86C117 82.134 113.866 79 110 79H106C102.134 79 99 82.134 99 86V86V92.1716C99 93.9534 101.154 94.8457 102.414 93.5858L102.868 93.1316C102.953 93.0473 103.067 93 103.186 93H110C113.866 93 117 89.866 117 86V86Z" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <circle cx="104" cy="86" r="1" fill="#D5C2B9"/>
  <circle cx="108" cy="86" r="1" fill="#D5C2B9"/>
  <circle cx="112" cy="86" r="1" fill="#D5C2B9"/>
  <path d="M276 94V87C276 85.8954 275.105 85 274 85C272.895 85 272 85.8954 272 87V94C272 95.1046 272.895 96 274 96C275.105 96 276 95.1046 276 94Z" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <path d="M262 94V91C262 89.8954 261.105 89 260 89C258.895 89 258 89.8954 258 91V94C258 95.1046 258.895 96 260 96C261.105 96 262 95.1046 262 94Z" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <path d="M269 94V82C269 80.8954 268.105 80 267 80C265.895 80 265 80.8954 265 82V94C265 95.1046 265.895 96 267 96C268.105 96 269 95.1046 269 94Z" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <path d="M328 96C328 95.0807 328.181 94.1705 328.533 93.3212C328.885 92.4719 329.4 91.7003 330.05 91.0503C330.7 90.4002 331.472 89.8846 332.321 89.5328C333.17 89.1811 334.081 89 335 89C335.919 89 336.83 89.1811 337.679 89.5328C338.528 89.8846 339.3 90.4002 339.95 91.0503C340.6 91.7003 341.115 92.4719 341.467 93.3212C341.819 94.1705 342 95.0808 342 96" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <rect x="331" y="81" width="8" height="8" rx="4" stroke="#D5C2B9" stroke-width="2" stroke-linejoin="round"/>
  <g filter="url(#filter1_d_22_3320)">
    <rect x="156" y="16" width="64" height="64" rx="32" fill="#9BB068"/>
    <path d="M187 49V56H189V49H196V47H189V40H187V47H180V49H187Z" fill="white"/>
  </g>
  <defs>
    <filter id="filter0_d_22_3320" x="-32" y="0" width="439" height="144" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
      <feFlood flood-opacity="0" result="BackgroundImageFix"/>
      <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
      <feOffset dy="-16"/>
      <feGaussianBlur stdDeviation="16"/>
      <feComposite in2="hardAlpha" operator="out"/>
      <feColorMatrix type="matrix" values="0 0 0 0 0.294118 0 0 0 0 0.203922 0 0 0 0 0.145098 0 0 0 0.05 0"/>
      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_22_3320"/>
      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_22_3320" result="shape"/>
    </filter>
    <filter id="filter1_d_22_3320" x="124" y="0" width="128" height="128" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
      <feFlood flood-opacity="0" result="BackgroundImageFix"/>
      <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0" result="hardAlpha"/>
      <feOffset dy="16"/>
      <feGaussianBlur stdDeviation="16"/>
      <feComposite in2="hardAlpha" operator="out"/>
      <feColorMatrix type="matrix" values="0 0 0 0 0.607843 0 0 0 0 0.690196 0 0 0 0 0.407843 0 0 0 0.5 0"/>
      <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow_22_3320"/>
      <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow_22_3320" result="shape"/>
    </filter>
  </defs>
</svg>
''';