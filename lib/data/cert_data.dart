class Certs {
  final String title;
  final String issued;
  final String image;

  const Certs({required this.title, required this.issued, required this.image});
}

class CertData {
  static const List<Certs> cert = [
    Certs(
      title: "Technical Support Fundamentals",
      issued: "June 2025",
      image: "images/it-funda.jpg",
    ),
    Certs(
      title: "Accenture Technology Academy",
      issued: "June 2025",
      image: "images/accenture.jpg",
    ),
    Certs(
      title: "AI Fundamentals",
      issued: "June 2026",
      image: "images/ai-funda.jpg",
    ),
  ];
}
