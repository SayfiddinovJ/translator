class PronunciationModel {
  final String sourceTextPhonetic;
  final String sourceTextAudio;
  final String destinationTextAudio;

  PronunciationModel({
    required this.sourceTextPhonetic,
    required this.sourceTextAudio,
    required this.destinationTextAudio,
  });

  factory PronunciationModel.fromJson(Map<String, dynamic> json) {
    return PronunciationModel(
      sourceTextPhonetic: json['source-text-phonetic'],
      sourceTextAudio: json['source-text-audio'],
      destinationTextAudio: json['destination-text-audio'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source-text-phonetic'] = sourceTextPhonetic;
    data['source-text-audio'] = sourceTextAudio;
    data['destination-text-audio'] = destinationTextAudio;
    return data;
  }
}
