class Actives {
  final String images;
  final String titles;

  const Actives({required this.images, required this.titles});
}

class ActivitiesData {
  static const List<Actives> acts = [
    Actives(images: "/images/astro.jpg", titles: "Astro Gazing"),
    Actives(images: "/images/gow.jpg", titles: "Playing"),
  ];
}
