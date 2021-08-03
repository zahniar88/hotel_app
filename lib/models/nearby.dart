class Nearby {
  final String image;
  final String title;
  final String location;
  final double distance;

  Nearby({
    required this.image,
    required this.title,
    required this.location,
    required this.distance,
  });

  static List<Nearby> nearby = [
    Nearby(
      image: "assets/images/image2.png",
      title: "GH Setiabuddy",
      location: "Setiabuddy, Bandung",
      distance: 0.1,
    ),
    Nearby(
      image: "assets/images/image3.png",
      title: "Damsaurus Hotel",
      location: "Pasteur, Bandung",
      distance: 1.6,
    ),
    Nearby(
      image: "assets/images/image4.png",
      title: "Andjoy Hotel",
      location: "Kebon Jaty, Bandung",
      distance: 2.2,
    ),
  ];
}
