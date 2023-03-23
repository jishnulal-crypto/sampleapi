import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class ApiService {
  static Future<Response> login(String username, int password) async {
    var response = Response();
    var resp =
        jsonEncode({"email": "Developer5@gmail.com", "password": 123456});
    try {
      var res = await http.post(
          Uri.parse("http://restapi.adequateshop.com/api/authaccount/login"),
          body: resp,
          headers: {});
    } catch (e) {}
    return response;
  }
}
