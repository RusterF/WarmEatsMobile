import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

class Api {
  static const baseUrl = "http://192.168.1.101/db_warmeats/";

  static addUser(Map currentUser) async {
    var url = Uri.parse("${baseUrl}postUser");

    try {
      final res = await http.post(url, body: currentUser);
      if (res.statusCode == 201) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
