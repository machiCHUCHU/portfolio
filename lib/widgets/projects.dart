import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        spacing: 8,
        children: [
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: const Text(
              "Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF312E81),
              ),
            ),
          ),

          const SizedBox(height: 4),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.asset(
                    "images/commerce.png",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        "Wooden Product E-Commerce Website",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF312E81),
                        ),
                      ),
                      Text("May - June 2026"),
                      const SizedBox(height: 8),
                      Text(
                        "A simple and responsive e-commerce website for wooden products. Built with pre-structured contents of Wix and AI generation for full control of layout and desired content. Optimized SEO for web performance and boost sales.",
                      ),
                      const SizedBox(height: 8),
                      Row(children: [Image.asset("icons/wix.png", width: 32)]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
