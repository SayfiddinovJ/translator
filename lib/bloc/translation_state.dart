part of 'translation_bloc.dart';

@immutable
class TranslationState extends Equatable {
  final String statusText;
  final TranslationModel translationModel;
  final FormStatus status;
  final String text;

  const TranslationState({
    required this.statusText,
    required this.translationModel,
    required this.status,
    required this.text,
  });

  TranslationState copyWith({
    String? statusText,
    TranslationModel? translationModel,
    FormStatus? status,
    String? text,
  }) {
    return TranslationState(
      statusText: statusText ?? this.statusText,
      translationModel: translationModel ?? this.translationModel,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }

  String canRequest() {
    if (text.isEmpty) return 'Enter some text';
    return '';
  }

  @override
  List<Object?> get props => [statusText, status, translationModel, text];
}
