import 'package:flutter/material.dart';
import 'package:portfolio/data/tools_data.dart';

class Tools extends StatelessWidget {
  Tools({super.key});
  final List<Toolings> tools = ToolsData.tools;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: const Text(
              "Tools & Apps",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF312E81),
              ),
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: tools.map((tools) {
              return Chip(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
                avatar: Image.asset(tools.image, height: 24),
                label: Text(tools.name),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
