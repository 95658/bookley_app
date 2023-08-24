class AccessInfo {
  final String country;
  final String viewability;
  final bool embeddable;
  final bool publicDomain;
  final bool quoteSharingAllowed;
  final String webReaderLink;
  final String accessViewStatus;

  AccessInfo(
      {
        required this.country,
      required this.viewability,
      required this.embeddable,
      required this.publicDomain,
      required this.quoteSharingAllowed,
      required this.webReaderLink,
      required this.accessViewStatus
      });

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'quoteSharingAllowed': quoteSharingAllowed,
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
    };
  }

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return AccessInfo(
      country: json['country'] as String,
      viewability: json['viewability'] as String,
      embeddable: json['embeddable'] as bool,
      publicDomain: json['publicDomain'] as bool,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool,
      webReaderLink: json['webReaderLink'] as String,
      accessViewStatus: json['accessViewStatus'] as String,
    );
  }
}