class Project {
  final String title;
  final String date;
  final String description;
  final String imagePath;
  final List<String> toolIcons;

  const Project({
    required this.title,
    required this.date,
    required this.description,
    required this.imagePath,
    required this.toolIcons,
  });
}

class ProjectsData {
  static const List<Project> projects = [
    Project(
      title: "Wooden Product E-Commerce Website",
      date: "May - June 2026",
      description:
          "A simple and responsive e-commerce website for wooden products. Built with pre-structured contents of Wix and AI generation for full control of layout and desired content. Optimized SEO for web performance and boost sales.",
      imagePath: "images/commerce.png",
      toolIcons: ["icons/wix.png"],
    ),
  ];
}
