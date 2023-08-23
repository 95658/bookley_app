class ReadingModes {
  ReadingModes({
    required this.text,
    required this.image,
  });
  late final bool text;
  late final bool image;

  ReadingModes.fromJson(Map<String, dynamic> json){
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['image'] = image;
    return _data;
  }
}