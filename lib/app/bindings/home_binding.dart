import 'package:get/get.dart';
import 'package:mobiletower_kiosk/app/controller/home_controller.dart';
import 'package:mobiletower_kiosk/app/data/provider/api.dart';
import 'package:http/http.dart' as http;
import 'package:mobiletower_kiosk/app/data/repository/posts_repository.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(repository: MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }
}
