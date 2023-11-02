import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:translater/data/models/pronunciation_model.dart';
import 'package:translater/data/models/status.dart';
import 'package:translater/data/models/translations_model.dart';
import 'package:translater/data/models/universal_data.dart';
import 'package:translater/data/models/word_model.dart';
import 'package:translater/repository/api_repository.dart';

part 'translation_event.dart';

part 'translation_state.dart';

class TranslationBloc extends Bloc<TranslationEvent, TranslationState> {
  TranslationBloc({required this.apiRepository})
      : super(
          TranslationState(
            statusText: '',
            translationModel: TranslationModel(
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
            text: '',
          ),
        ) {
    on<TranslationEvent>((event, emit) {});
    on<GetTranslationEvent>(getTranslation);
  }

  final ApiRepository apiRepository;

  getTranslation(
      GetTranslationEvent event, Emitter<TranslationState> emit) async {
    emit(state.copyWith(status: FormStatus.loading));
    UniversalData data =
        await apiRepository.getTranslation(event.sl, event.dl, state.text);
    if (data.error.isEmpty) {
      emit(state.copyWith(
          status: FormStatus.success, translationModel: data.data));
    } else {
      emit(state.copyWith(status: FormStatus.failed, statusText: data.error));
    }
  }

  copyWith(String v) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state.copyWith(text: v));
  }
}
