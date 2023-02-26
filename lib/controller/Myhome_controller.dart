import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class MyHomeController extends GetxController{

 Future<dynamic> getData() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return body;
    }
  }

}