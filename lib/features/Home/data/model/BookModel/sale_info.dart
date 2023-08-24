class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;

  SaleInfo({
    required this.country,
    required this.isEbook,
    required this.saleability,
});

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
    };
  }

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'] as String,
      saleability: json['saleability'] as String,
      isEbook: json['isEbook'] as bool,
    );
  }
}