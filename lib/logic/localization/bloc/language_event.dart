part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SwitchLanguage extends LanguageEvent {
  final Locale newLocale;

  SwitchLanguage({required this.newLocale});
}
