import 'RetailPrice.dart';
import 'Offers.dart';
import 'dart:convert';

/// country : "EG"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":2115.25,"currencyCode":"EGP"}
/// retailPrice : {"amount":2115.25,"currencyCode":"EGP"}
/// buyLink : "https://play.google.com/store/books/details?id=hM_tDwAAQBAJ&rdid=book-hM_tDwAAQBAJ&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":2115250000,"currencyCode":"EGP"},"retailPrice":{"amountInMicros":2115250000,"currencyCode":"EGP"}}]

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      this.country, 
      this.saleability, 
      this.isEbook, 
      this.listPrice, 
      this.retailPrice, 
      this.buyLink, 
      this.offers,});

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'];
    retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = [];
      json['offers'].forEach((v) {
        offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;
SaleInfo copyWith({  String? country,
  String? saleability,
  bool? isEbook,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  String? buyLink,
  List<Offers>? offers,
}) => SaleInfo(  country: country ?? this.country,
  saleability: saleability ?? this.saleability,
  isEbook: isEbook ?? this.isEbook,
  listPrice: listPrice ?? this.listPrice,
  retailPrice: retailPrice ?? this.retailPrice,
  buyLink: buyLink ?? this.buyLink,
  offers: offers ?? this.offers,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    map['listPrice'] = listPrice;
    if (retailPrice != null) {
      map['retailPrice'] = retailPrice?.toJson();
    }
    map['buyLink'] = buyLink;
    if (offers != null) {
      map['offers'] = offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}