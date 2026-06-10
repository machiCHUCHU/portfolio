import 'package:flutter/material.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Hobbies",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF312E81),
            ),
          ),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
              child: Image.asset("images/accenture.jpg"),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.darken,
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFFE5E6E4),
                      Color(0xFFECECEB),
                      Color(0xFFF2F3F2),
                      Color(0xFFF9F9F8),
                      Color(0xFFFFFFFF),
                    ],
                  ),
                ),
                child: Text("Astronomy", style: TextStyle(fontSize: 24)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
