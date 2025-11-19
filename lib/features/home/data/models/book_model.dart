import 'package:equatable/equatable.dart';

class Book extends Equatable {
  final String id;
  final String title;
  final String author;
  final String image;
  final double price;
  final double rating;
  final double reviews;
  final String description;

  const Book({
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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'image': image,
      'price': price,
      'rating': rating,
      'reviews': reviews,
      'description': description,
    };
  }

  Book copyWith({
    String? id,
    String? title,
    String? author,
    String? image,
    double? price,
    double? rating,
    double? reviews,
    String? description,
  }) {
    return Book(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      reviews: reviews ?? this.reviews,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [
    id,
    title,
    author,
    image,
    price,
    rating,
    reviews,
    description,
  ];
}
