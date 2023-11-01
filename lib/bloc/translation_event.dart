part of 'translation_bloc.dart';

@immutable
abstract class TranslationEvent extends Equatable {}

class GetTranslationEvent extends TranslationEvent {
  final String sl;
  final String dl;
  final String text;

  GetTranslationEvent({
    required this.sl,
    required this.dl,
    required this.text,
  });

  @override
  List<Object?> get props => [sl, dl, text];
}
