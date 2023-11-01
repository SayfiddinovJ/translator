import 'package:translater/data/models/pronunciation_model.dart';
import 'package:translater/data/models/translations_model.dart';

class TranslationModel {
  final String sourceLanguage;
  final String sourceText;
  final String destinationLanguage;
  final String destinationText;
  final PronunciationModel pronunciation;
  final TranslationsModel translations;

  TranslationModel({
    required this.sourceLanguage,
    required this.sourceText,
    required this.destinationLanguage,
    required this.destinationText,
    required this.pronunciation,
    required this.translations,
  });

  factory TranslationModel.fromJson(Map<String, dynamic> json) {
    return TranslationModel(
      sourceLanguage: json['source-language'],
      sourceText: json['source-text'],
      destinationLanguage: json['destination-language'],
      destinationText: json['destination-text'],
      pronunciation: PronunciationModel.fromJson(json['pronunciation']),
      translations: TranslationsModel.fromJson(json['translations']),
    );
  }
}
