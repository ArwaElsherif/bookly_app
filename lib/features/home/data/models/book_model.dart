class Book {
  final String id;
  final String title;
  final String author;
  final String image;
  final double price;
  final double rating;
  final double reviews;
  final String description;

  Book( {
    required this.id,
    required this.title,
    required this.author,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.description,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      author: json['author'] ?? '',
      image: json['image'] ?? '',
      price: double.tryParse(json['price'].toString()) ?? 0.0,
      rating: double.tryParse(json['rating'].toString()) ?? 0.0,
      reviews: double.tryParse(json['reviews'].toString()) ?? 0.0,
      description: json['description'] ?? '',
    );
  }
}
