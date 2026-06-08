class Experience {
  final String company;
  final String role;
  final String duration;
  final String desc;
  final List<String> skills;

  const Experience({
    required this.company,
    required this.role,
    required this.duration,
    required this.desc,
    required this.skills,
  });
}

class ExpData {
  static const List<Experience> exp = [
    Experience(
      company: "[Redacted]",
      role: "Assistant",
      duration: "Nov 2025 - Present",
      desc:
          "Supports day-to-day business operations through administrative, inventory, and operational assistance, ensuring organized processes and efficient workflow management.",
      skills: [
        "Administrative Management",
        "Operations Coordination",
        "Attention to Detail",
        "Time Management",
        "Problem Solving",
      ],
    ),
    Experience(
      company: "Accenture, Inc.",
      role: "Student Delegate",
      duration: "March - June 2025",
      desc:
          "Participated in Accenture's online self-paced bootcamp program as my internship for Frontend Development and Backend Development, learning foundational skills and technologies necessary for industry workplace. Practiced everyday coding skills for logical reasoning, file structure, and efficient coding hobby.",
      skills: ["Angular", "Java", "Spring Boot", "Github", "Docker"],
    ),
  ];
}
