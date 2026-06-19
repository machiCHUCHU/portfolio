import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_colors.dart';
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
      title: 'Flutter Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        scaffoldBackgroundColor: AppColors.background,
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            // Desktop Split Layout
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProfileHeader(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      spacing: 16,
                      children: [
                        AboutMe(),
                        Projects(),
                        Experiences(),
                        Certificates(),
                        Tools(),
                        Activities(),
                      ],
                    ),
                  ),
                ),
              ],
            );
          } else {
            // Mobile Single Column Layout
            return SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 16,
                    children: [
                      ProfileHeader(),
                      AboutMe(),
                      Projects(),
                      Experiences(),
                      Certificates(),
                      Tools(),
                      Activities(),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
