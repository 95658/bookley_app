class ImageLinks{
  final String? smallThumbnail;
  final String? thumbnail;

  ImageLinks({required this.smallThumbnail, required this.thumbnail});

  Map<String, dynamic> toJson() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String,
      thumbnail: json['thumbnail'] as String,
    );
  }
}