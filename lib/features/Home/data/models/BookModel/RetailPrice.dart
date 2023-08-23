/// amountInMicros : 2115250000
/// currencyCode : "EGP"

class RetailPrice {
  RetailPrice({
      this.amountInMicros, 
      this.currencyCode,});

  RetailPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}