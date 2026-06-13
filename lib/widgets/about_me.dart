import 'package:flutter/material.dart';

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
                  style: TextStyle(color: Color(0xFF8E9193), letterSpacing: 4),
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
              "Aspiring Tech Support Associate with a growing interest in technology and problem-solving. I am focused on expanding my technical toolkit every day to build a strong foundation in IT service. Ready to bring a patient, practical approach to helping users navigate technical hurdles and resolve their issues efficiently.",
              style: TextStyle(height: 1.8),
            ),
          ),
        ],
      ),
    );
  }
}
