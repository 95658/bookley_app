import 'dart:convert';

/// textSnippet : "Each paper is accompanied by a brief essay by Harry Lewis, the volume&#39;s editor, offering historical and intellectual context."

SearchInfo searchInfoFromJson(String str) => SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());
class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? this.textSnippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}