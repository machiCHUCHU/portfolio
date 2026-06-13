import 'package:flutter/material.dart';
import 'package:portfolio/data/act_data.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  final List<Actives> activities = ActivitiesData.acts;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        spacing: 16,
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
          Column(
            spacing: 16,
            children: activities.map((act) {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                    child: Image.asset(
                      act.images,
                      fit: BoxFit.fill,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Color(0xFF020202).withValues(alpha: 100),
                            Color(0xFF090909).withValues(alpha: 125),
                            Color(0xFF0d0d0d).withValues(alpha: 150),
                            Color(0xFF111111).withValues(alpha: 175),
                            Color(0xFF181818).withValues(alpha: 220),
                          ],
                        ),
                      ),
                      child: Text(
                        act.titles,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
