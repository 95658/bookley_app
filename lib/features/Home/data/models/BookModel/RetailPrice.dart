import 'dart:convert';

/// amountInMicros : 2115250000
/// currencyCode : "EGP"

RetailPrice retailPriceFromJson(String str) => RetailPrice.fromJson(json.decode(str));
String retailPriceToJson(RetailPrice data) => json.encode(data.toJson());
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
RetailPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => RetailPrice(  amountInMicros: amountInMicros ?? this.amountInMicros,
  currencyCode: currencyCode ?? this.currencyCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}