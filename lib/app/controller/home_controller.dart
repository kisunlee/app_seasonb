import 'package:get/get.dart';
import 'package:mobiletower_kiosk/app/data/model/user_model.dart';
import 'package:mobiletower_kiosk/app/data/repository/posts_repository.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository});

  final _postsList = <MyModel>[].obs;
  get postList => _postsList.value;
  set postList(value) => _postsList.value = value;

  final _post = MyModel().obs;
  get post => _post.value;
  set post(value) => _post.value = value;

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  adicionar(post) {}
  //dismissible
  excluir(id) {}
  //dismissible
  editar() {}
  details(post) {}
}
