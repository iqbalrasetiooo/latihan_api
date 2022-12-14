import 'dart:convert';
import 'package:practice_api/get_user_by_id.dart';
import 'package:practice_api/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:practice_api/models/user_model.dart';

class ApiService {
  Uri urlProduct =
      Uri.parse("https://63387485937ea77bfdc06386.mockapi.io/product");
  Uri urlUser = Uri.parse("https://63997d6416b0fdad773e5bfb.mockapi.io/users");
  Uri urlUserById =
      Uri.parse("https://63997d6416b0fdad773e5bfb.mockapi.io/users/{id}");

  Future<List<ProductModel>> getProducts() async {
    var response = await http.get(urlProduct);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as List;
      final data = json.map((e) => ProductModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  Future<List<UserModel>> getUser() async {
    var response = await http.get(urlUser);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as List;
      final data = json.map((e) => UserModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }

  Future<List<UserModel>> getUserById() async {
    var response = await http.get(urlUserById);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as List;
      final data = json.map((e) => UserModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception();
    }
  }
}
