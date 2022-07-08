
/*
class LocaleCubit extends Cubit<Locale> {
  final SharedPreferences _preferences;
LocaleCubit(this._preferences) : super(SelectedLocale(Locale(_preferences.getString('locale')??'ar')));
// Here we initialize the object to the last saved locale and default to 'ar' if there is none


// Method that saves and emits the new locale
  void _changeLocale(String locale) { 
_preferences.setString('locale',locale);
emit(context.setLocale(Locale(locale)));
}
  void toEnglish() => _changeLocale('en');
  void toArabic() => _changeLocale('ar');
} */