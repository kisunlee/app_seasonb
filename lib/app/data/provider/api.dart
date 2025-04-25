import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobiletower_kiosk/app/data/model/user_model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts/';

class MyApiClient {
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  getAll() async {
    try {
      Uri uri = Uri.parse(baseUrl);
      var response = await httpClient.get(uri);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel = jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        // listMyModel.removeRange(2, listMyModel.length);
        // List<MyModel> listMyModel = new List<MyModel>.empty();
        print('listMyModel length${listMyModel.length}');
        return listMyModel;
      } else {
        print('erro');
      }
    } catch (_) {}
  }

  getId(id) async {
    try {
      Uri uri = Uri.parse(baseUrl);
      var response = await httpClient.get(uri);
      if (response.statusCode == 200) {
        //Map<String, dynamic> jsonResponse = json.decode(response.body);
      } else {
        print('erro -get');
      }
    } catch (_) {}
  }
}
