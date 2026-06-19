import 'package:flutter/material.dart';
import 'package:portfolio/data/profile_data.dart';
import 'package:portfolio/theme/app_colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        spacing: 8,
        children: [
          Row(
            children: [
              Expanded(child: Divider(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const Text(
                  "ABOUT ME",
                  style: TextStyle(color: AppColors.textGrey, letterSpacing: 4),
                ),
              ),
              Expanded(child: Divider(color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
              ],
            ),
            child: const Text(
              ProfileData.bio,
              style: TextStyle(height: 1.8),
            ),
          ),
        ],
      ),
    );
  }
}
