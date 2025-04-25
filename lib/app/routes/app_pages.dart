import 'package:get/get.dart';

import 'package:mobiletower_kiosk/app/bindings/home_binding.dart';

import 'package:mobiletower_kiosk/app/view/home_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => const HomePage(), binding: HomeBinding()),
  ];
}
