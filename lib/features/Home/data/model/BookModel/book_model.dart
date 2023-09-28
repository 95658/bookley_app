
import 'package:bookley_app/features/Home/data/model/BookModel/sale_info.dart';
import 'package:bookley_app/features/Home/data/model/BookModel/volume_info.dart';


class BookModel{
  final String kind ;
  final String id ;
  final String etag ;
  final String selfLink ;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;

  BookModel({
    required this.saleInfo,
    required this.volumeInfo,
    required this.id,
    required this.etag,
    required this.kind,
    required this.selfLink,
});

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo,
      'saleInfo': saleInfo,
    };
  }

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json['kind'] as String,
      id: json['id'] as String,
      volumeInfo:  VolumeInfo.fromJson(json['volumeInfo'] as Map<String , dynamic>) ,
      etag: json['etag'] as String,
      selfLink: json['selfLink'] as String,
      saleInfo: SaleInfo.fromJson(json['saleInfo'] as Map<String , dynamic>),
    );
  }
}