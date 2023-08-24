class Epub {
  final bool isAvailable;
  final String acsTokenLink;

  Epub({
    required this.isAvailable,
    required this.acsTokenLink,
});

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String,
    );
  }
}