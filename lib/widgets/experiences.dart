import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Experiences",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF312E81),
          ),
        ),
        Timeline.tileBuilder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          builder: TimelineTileBuilder.connected(
            itemCount: 2,
            contentsAlign: ContentsAlign.basic,
            nodePositionBuilder: (context, index) => 0.0,

            connectorBuilder: (context, index, type) {
              if (index == 1 && type == ConnectorType.end) {
                return const TransparentConnector();
              }
              return const SolidLineConnector();
            },
            indicatorBuilder: (context, index) {
              return const DotIndicator();
            },
            contentsBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "2025 - Present",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Text(
                      "Senior Creative Lead",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Aurora Creative Studio",
                      style: TextStyle(
                        color: Color(0xFF5C5F61),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Directing multidisciplinary teams for global luxury brands. Focused on bridging the gap between high-end aesthetics and functional UX.",
                      style: TextStyle(height: 1.8),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
