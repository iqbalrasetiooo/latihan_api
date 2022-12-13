import 'dart:convert';
import 'package:practice_api/bloc/product/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Uri url = Uri.parse("https://63387485937ea77bfdc06386.mockapi.io/product");

  Future<List<ProductModel>> getProduct() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as List;
      final data = json.map((e) => ProductModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }
}
