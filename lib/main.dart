import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/activities.dart';
import 'package:portfolio/widgets/certificates.dart';
import 'package:portfolio/widgets/experiences.dart';
import 'package:portfolio/widgets/profile.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyPortfolio(),
    );
  }
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FB),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  const SizedBox(height: 8),
                  ProfileHeader(),
                  const SizedBox(height: 8),
                  AboutMe(),
                  const SizedBox(height: 8),
                  Projects(),
                  const SizedBox(height: 8),
                  Experiences(),
                  const SizedBox(height: 8),
                  Certificates(),
                  const SizedBox(height: 8),
                  Tools(),
                  const SizedBox(height: 8),
                  Activities(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
