import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  Future<void> downloadResume() async {
    final Uri url = Uri.parse("web/assets/suit.jpg");

    await launchUrl(url);
  }

  Future<void> emailTo() async {
    final Uri url = Uri(scheme: 'mailto', path: 'ryanmarksagaysay02@gmail.com');

    await launchUrl(url);
  }

  Future<void> facebook() async {
    final Uri url = Uri.parse("https://www.facebook.com/ryanmark.reyes");

    await launchUrl(url);
  }

  Future<void> linkedin() async {
    final Uri url = Uri.parse(
      "https://www.linkedin.com/in/sagaysay-ryan-mark-r",
    );

    await launchUrl(url);
  }

  Future<void> github() async {
    final Uri url = Uri.parse("github.com/machiCHUCHU");

    await launchUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const SizedBox(height: 16),
        CircleAvatar(
          radius: 60,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)],
              borderRadius: BorderRadius.circular(80),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset("images/suit.jpg"),
            ),
          ),
        ),
        const Text(
          "Juan Dela Cruz",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF312E81),
          ),
        ),
        const Text(
          "ASPIRING TECH SUPPORT",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF29A195),
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            IconButton(
              onPressed: () => facebook(),
              icon: Image.asset("icons/facebook.png", width: 24),
            ),
            IconButton(
              onPressed: () => linkedin(),
              icon: Image.asset("icons/linkedin.png", width: 24),
            ),
            IconButton(
              onPressed: () => github(),
              icon: Image.asset("icons/github.png", width: 24),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF100563),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),

                  onPressed: () => downloadResume(),
                  icon: Icon(Icons.download),
                  label: const Text("Download CV"),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF006A61),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () => emailTo(),
                  icon: Icon(Icons.email),
                  label: const Text("Get in Touch"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
