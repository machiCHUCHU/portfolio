import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/data/profile_data.dart';
import 'package:portfolio/theme/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    try {
      if (!await launchUrl(url)) {
        debugPrint('Could not launch $urlString');
      }
    } catch (e) {
      debugPrint('Error launching url $urlString: $e');
    }
  }

  Future<void> _emailTo(String email) async {
    final Uri url = Uri(scheme: 'mailto', path: email);
    try {
      if (!await launchUrl(url)) {
        debugPrint('Could not launch email to $email');
      }
    } catch (e) {
      debugPrint('Error launching email: $e');
    }
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
              child: Image.asset(ProfileData.profileImagePath),
            ),
          ),
        ),
        const Text(
          ProfileData.name,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const Text(
          ProfileData.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.secondary,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            IconButton(
              onPressed: () => _launchURL(ProfileData.facebookUrl),
              icon: Image.asset("icons/facebook.png", width: 24),
            ),
            IconButton(
              onPressed: () => _launchURL(ProfileData.linkedinUrl),
              icon: Image.asset("icons/linkedin.png", width: 24),
            ),
            IconButton(
              onPressed: () => _launchURL(ProfileData.githubUrl),
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
                    backgroundColor: AppColors.accentDark,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () => _launchURL(ProfileData.resumeUrl),
                  icon: Icon(Icons.download),
                  label: const Text("Download CV"),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentTeal,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () => _emailTo(ProfileData.email),
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
