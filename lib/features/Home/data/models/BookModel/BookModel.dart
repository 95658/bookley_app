import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "hM_tDwAAQBAJ"
/// etag : "lwKQhZbtxh4"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/hM_tDwAAQBAJ"
/// volumeInfo : {"title":"Ideas That Created the Future","subtitle":"Classic Papers of Computer Science","authors":["Harry R. Lewis"],"publisher":"MIT Press","publishedDate":"2021-02-02","description":"Classic papers by thinkers ranging from from Aristotle and Leibniz to Norbert Wiener and Gordon Moore that chart the evolution of computer science. Ideas That Created the Future collects forty-six classic papers in computer science that map the evolution of the field. It covers all aspects of computer science: theory and practice, architectures and algorithms, and logic and software systems, with an emphasis on the period of 1936-1980 but also including important early work. Offering papers by thinkers ranging from Aristotle and Leibniz to Alan Turing and Nobert Wiener, the book documents the discoveries and inventions that created today's digital world. Each paper is accompanied by a brief essay by Harry Lewis, the volume's editor, offering historical and intellectual context.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9780262362214"},{"type":"ISBN_10","identifier":"026236221X"}],"readingModes":{"text":true,"image":true},"pageCount":520,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"1.1.1.0.preview.3","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=hM_tDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=hM_tDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=hM_tDwAAQBAJ&printsec=frontcover&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=hM_tDwAAQBAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=hM_tDwAAQBAJ"}
/// saleInfo : {"country":"EG","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":2115.25,"currencyCode":"EGP"},"retailPrice":{"amount":2115.25,"currencyCode":"EGP"},"buyLink":"https://play.google.com/store/books/details?id=hM_tDwAAQBAJ&rdid=book-hM_tDwAAQBAJ&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":2115250000,"currencyCode":"EGP"},"retailPrice":{"amountInMicros":2115250000,"currencyCode":"EGP"}}]}
/// accessInfo : {"country":"EG","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Ideas_That_Created_the_Future-sample-epub.acsm?id=hM_tDwAAQBAJ&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"pdf":{"isAvailable":true,"acsTokenLink":"http://books.google.com.eg/books/download/Ideas_That_Created_the_Future-sample-pdf.acsm?id=hM_tDwAAQBAJ&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"},"webReaderLink":"http://play.google.com/books/reader?id=hM_tDwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"Each paper is accompanied by a brief essay by Harry Lewis, the volume&#39;s editor, offering historical and intellectual context."}

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}