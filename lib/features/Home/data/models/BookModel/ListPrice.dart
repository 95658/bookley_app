import 'dart:convert';

/// amountInMicros : 2115250000
/// currencyCode : "EGP"

ListPrice listPriceFromJson(String str) => ListPrice.fromJson(json.decode(str));
String listPriceToJson(ListPrice data) => json.encode(data.toJson());
class ListPrice {
  ListPrice({
      this.amountInMicros, 
      this.currencyCode,});

  ListPrice.fromJson(dynamic json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
  num? amountInMicros;
  String? currencyCode;
ListPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => ListPrice(  amountInMicros: amountInMicros ?? this.amountInMicros,
  currencyCode: currencyCode ?? this.currencyCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = amountInMicros;
    map['currencyCode'] = currencyCode;
    return map;
  }

}