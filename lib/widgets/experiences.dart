import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../data/exp_data.dart';
import '../theme/app_colors.dart';

class Experiences extends StatelessWidget {
  Experiences({super.key});
  final List<Experience> exp = ExpData.exp;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Experiences",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Timeline.tileBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            builder: TimelineTileBuilder.connected(
              itemCount: exp.length,
              contentsAlign: ContentsAlign.basic,
              nodePositionBuilder: (context, index) => 0.0,

              connectorBuilder: (context, index, type) {
                if (index == exp.length - 1 && type == ConnectorType.end) {
                  return const TransparentConnector();
                }
                return const SolidLineConnector(space: 8);
              },
              indicatorBuilder: (context, index) {
                return Indicator.dot(position: 0.13);
              },
              contentsBuilder: (context, index) {
                final Experience job = exp[index];

                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(job.duration, style: TextStyle(color: Colors.grey)),
                      Text(
                        job.role,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        job.company,
                        style: TextStyle(
                          color: AppColors.textDarkGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(job.desc, style: TextStyle(height: 1.8)),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: job.skills.map((skill) {
                          return Chip(
                            backgroundColor: AppColors.lightPurpleBackground,
                            side: BorderSide.none,
                            label: Text(
                              skill,
                              style: TextStyle(
                                color: AppColors.darkPurpleText,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
