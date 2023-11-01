part of 'translation_bloc.dart';

@immutable
class TranslationState extends Equatable {
  final String statusText;
  final TranslationModel userModel;
  final FormStatus status;

  const TranslationState({
    required this.statusText,
    required this.userModel,
    required this.status,
  });

  TranslationState copyWith({
    String? statusText,
    TranslationModel? userModel,
    FormStatus? status,
  }) {
    return TranslationState(
      statusText: statusText ?? this.statusText,
      userModel: userModel ?? this.userModel,
      status: status ?? this.status,
    );
  }

  String canRequest() {
    if (userModel.sourceText.isEmpty) return 'Enter some text';
    return '';
  }

  @override
  List<Object?> get props => [statusText, status, userModel];
}
