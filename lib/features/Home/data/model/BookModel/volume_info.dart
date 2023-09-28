import 'package:bookley_app/features/Home/data/model/BookModel/image_links.dart';

class VolumeInfo {
  VolumeInfo({
    required this.title,
    required this.subtitle,
    required this.authors,
    required this.categories,
    required this.imageLinks,
    required this.infoLink,
    required this.language,
    required this.maturityRating,
    required this.averageRating,
    required this.ratingsCount,
    required this.previewLink,
  });

  final String title;
  final num? averageRating;
  final num? ratingsCount;
  final String subtitle;
  final List<dynamic>? authors;
  final List<String>? categories;
  final String maturityRating;
  final ImageLinks? imageLinks;
  final String language;
  final String? previewLink;
  final String infoLink;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'authors': authors,
      'categories': categories,
      'maturityRating': maturityRating,
      'imageLinks': imageLinks,
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'averageRating' : averageRating,
      'ratingsCount' : ratingsCount,
    };
  }

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'] as String,
      subtitle: (json['subtitle'] ?? 'hello') as String,
      authors: ((json['authors'] ?? ['']) as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
      averageRating: (json['averageRating']?? 0) as num,
      ratingsCount: (json['ratingsCount']?? 0) as num,
      categories: ((json['categories'] ?? List<dynamic>) as List<dynamic>)
          .map((e) => e.toString())
          .toList(),
      maturityRating: json['maturityRating'] as String,
      imageLinks: ImageLinks.fromJson((json['imageLinks'] ??
          {
            ['']
          }) as Map<String, dynamic>),
      language: json['language'] as String,
      previewLink: json['previewLink'] as String,
      infoLink: json['infoLink'] as String,
    );
  }
}
