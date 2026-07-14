import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseurl = "http://192.168.1.223/api/";

  static addperson (Map pdata) async {
    print(pdata);

    var url = Uri.parse(baseurl + "add_person");

    try {

      final res = await http.post(url, body: pdata);

      if (res.statusCode == 200) {

        var data = jsonDecode(res.body.toString());
        print(data);

      } else {
        print("Failed to upload data");
      }

    } catch (e){
      print(e.toString());
    }
  }
}
