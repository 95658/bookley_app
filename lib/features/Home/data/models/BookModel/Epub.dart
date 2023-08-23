/// isAvailable : true
/// acsTokenLink : "http://books.google.com.eg/books/download/Ideas_That_Created_the_Future-sample-epub.acsm?id=hM_tDwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"

class Epub {
  Epub({
      this.isAvailable, 
      this.acsTokenLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

}