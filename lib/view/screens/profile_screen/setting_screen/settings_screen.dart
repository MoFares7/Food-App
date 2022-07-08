import 'package:ataa_charity_system/configs/size.dart';
import 'package:ataa_charity_system/configs/theme.dart';
import 'package:ataa_charity_system/translation/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Locations { ar, en }

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _darkMode = false;
  var languge = 'ar';
  bool isEnglish = true;
  bool _notificattion = false;
  bool isDarkModeEnabled = false;
  //ValueNotifier<String> buttonClickedTimes = ValueNotifier('ar');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary1,
          title: Center(
            child: Text(
              LocaleKeys.settings.tr(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        backgroundColor: AppColors.scaffoldColor,
        body: SingleChildScrollView(
            child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: defultPadding / 2,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: defultPadding,
                        ),
                        const Icon(Icons.language),
                        const SizedBox(
                          width: defultPadding * 2,
                        ),
                        Text('language'.tr()),
                        const SizedBox(
                          width: defultPadding * 11,
                        ),
                        SizedBox(
                          width: 120,
                          child: DropdownButtonFormField<Locale>(
                            alignment: Alignment.center,
                            decoration: const InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            value: context.locale,
                            onChanged: (newLanguage) {
                              context.setLocale(newLanguage!);
                            },
                            items: const [
                              DropdownMenuItem(
                                child: Text('Arabic'),
                                value: Locale('ar'),
                              ),
                              DropdownMenuItem(
                                child: Text('English'),
                                value: Locale('en'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: defultPadding,
                    ),
                    ListTile(
                        title: Text(
                          LocaleKeys.mode.tr(),
                        ),
                        leading: const Icon(
                          Icons.brightness_2,
                        ),
                        trailing: Switch(
                          activeColor: AppColors.primary1,
                          onChanged: (val) async {
                            SharedPreferences preferences =
                                await SharedPreferences.getInstance();
                            preferences.setBool('Dark Mode', val);

                            setState(() {
                              if (_darkMode) {}
                              _darkMode = val;
                            });
                          },
                          value: _darkMode,
                        )),
                    const SizedBox(
                      height: defultPadding,
                    ),
                    ListTile(
                      title: Text(
                        LocaleKeys.notificatin.tr(),
                      ),
                      leading: const Icon(
                        Icons.notification_important,
                      ),
                      trailing: Switch(
                        activeColor: AppColors.primary1,
                        onChanged: (val1) async {
                          SharedPreferences preferences =
                              await SharedPreferences.getInstance();
                          preferences.setBool('Noifications', val1);

                          setState(() {
                            _notificattion = val1;
                          });
                        },
                        value: _notificattion,
                      ),
                    )
                  ],
                ))));
  }
}
