import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageLoaded(locale: const Locale('ar'))) {
    on(_onLoadLanguage);
  }

  void _onLoadLanguage(
    SwitchLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    emit(LanguageLoaded(locale: event.newLocale));
  }
}
