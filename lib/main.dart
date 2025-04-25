import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobiletower_kiosk/app/routes/app_pages.dart';
import 'package:mobiletower_kiosk/app/translations/app_translations.dart';
import 'package:mobiletower_kiosk/app/view/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: const Locale('ko', 'en'),
    translationsKeys: AppTranslation.translations,
  ));
}
