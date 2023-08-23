import 'RetailPrice.dart';
import 'dart:convert';

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":2115250000,"currencyCode":"EGP"}
/// retailPrice : {"amountInMicros":2115250000,"currencyCode":"EGP"}

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));
String offersToJson(Offers data) => json.encode(data.toJson());
class Offers {
  Offers({
      this.finskyOfferType, 
      this.listPrice, 
      this.retailPrice,});

  Offers.fromJson(dynamic json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
  }
  num? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
Offers copyWith({  num? finskyOfferType,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
}) => Offers(  finskyOfferType: finskyOfferType ?? this.finskyOfferType,
  listPrice: listPrice ?? this.listPrice,
  retailPrice: retailPrice ?? this.retailPrice,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = finskyOfferType;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    return map;
  }

}