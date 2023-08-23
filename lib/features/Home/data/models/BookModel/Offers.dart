import 'RetailPrice.dart';

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":2115250000,"currencyCode":"EGP"}
/// retailPrice : {"amountInMicros":2115250000,"currencyCode":"EGP"}

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