class TranslationsModel {
  final List<String> possibleTranslations;

  TranslationsModel({required this.possibleTranslations});

  factory TranslationsModel.fromJson(Map<String, dynamic> json) {
    return TranslationsModel(
      possibleTranslations: List<String>.from(
        json['possible-translations'] ?? [],
      ),
    );
  }
}
