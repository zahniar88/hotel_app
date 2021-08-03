class Slide {
  final String image;
  final String title;
  final String location;
  final double rating;
  final double price;

  Slide({
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
    required this.price,
  });

  static List<Slide> slides = [
    Slide(
      image: "assets/images/image_slide1.png",
      title: "Daino Sas Hotel",
      location: "Bali, Denpasar",
      rating: 4.9,
      price: 559.999,
    ),
    Slide(
      image: "assets/images/image_slide2.png",
      title: "Bimosaurus Hotel",
      location: "Safari, Buitenzorg",
      rating: 4.8,
      price: 859.999,
    ),
  ];
}
