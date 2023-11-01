import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:translater/data/models/pronunciation_model.dart';
import 'package:translater/data/models/status.dart';
import 'package:translater/data/models/translations_model.dart';
import 'package:translater/data/models/word_model.dart';
import 'package:translater/repository/api_repository.dart';

part 'translation_event.dart';

part 'translation_state.dart';

class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  TranslationBloc({required this.apiRepository})
      : super(
          TranslationState(
            statusText: '',
            userModel: TranslationModel(
              sourceLanguage: '',
              sourceText: '',
              destinationLanguage: '',
              destinationText: '',
              pronunciation: PronunciationModel(
                sourceTextPhonetic: '',
                sourceTextAudio: '',
                destinationTextAudio: '',
              ),
              translations: TranslationsModel(possibleTranslations: []),
            ),
            status: FormStatus.pure,
          ),
        ) {
    on<TranslationEvent>((event, emit) {});
  }
  final ApiRepository apiRepository;

  getTranslation(
      GetTranslationEvent event, Emitter<TranslationState> emit) async {}
}
