class PanelizationSummary {
  PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });
  late final bool containsEpubBubbles;
  late final bool containsImageBubbles;

  PanelizationSummary.fromJson(Map<String, dynamic> json){
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['containsEpubBubbles'] = containsEpubBubbles;
    _data['containsImageBubbles'] = containsImageBubbles;
    return _data;
  }
}