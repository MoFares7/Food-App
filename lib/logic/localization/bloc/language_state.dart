part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LanguageLoaded extends LanguageState {
  final Locale locale;

  LanguageLoaded({required this.locale});

  @override
  List<Object?> get props => [locale];
}
