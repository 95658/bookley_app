class Pdf {
  final bool isAvailable;
  final String acsTokenLink;

  Pdf({
    required this.acsTokenLink,
    required this.isAvailable,
});

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }

  factory Pdf.fromJson(Map<String, dynamic> json) {
    return Pdf(
      isAvailable: json['isAvailable'] as bool,
      acsTokenLink: json['acsTokenLink'] as String,
    );
  }
}