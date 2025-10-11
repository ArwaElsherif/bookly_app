import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../../core/constants/constants.dart';
import '../models/book_model.dart';

class BookService {
  Future<List<Book>> fetchBooks() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = jsonDecode(response.body);

      final List<dynamic> data = jsonData['books'];

      return data.map((json) => Book.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load books: ${response.statusCode}");
    }
  }
}
