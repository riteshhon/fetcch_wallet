import 'dart:convert';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class PostRepo with ChangeNotifier {
  Logger logger = Logger();

  //Create user api call
  Future<Response> createUser(
    String name,
    String email,
    String passcode,
    String identity,
  ) async {
    try {
      Response response = await http.post(
        Uri.parse('${ConstText.baseUrl}/user'),
        headers: {
          'content-type': 'application/json',
        },
        body: jsonEncode({
          "name": name,
          "email": email,
          "passcode": passcode,
          "identity": '$identity@pay'
        }),
      );
      // userFromJson(response.body);

      /// all the decoding part is been done by the model file.
      return response;
    } catch (e) {
      logger.e("Create user api failed. \n ${e.toString()}");
      rethrow;
    }
  }

  //Login user api call
  Future<Response> loginUser(
    String email,
    String passcode,
  ) async {
    try {
      Response response = await http.post(
        Uri.parse('${ConstText.baseUrl}/user/login'),
        headers: {
          'content-type': 'application/json',
        },
        body: jsonEncode({
          "email": email,
          "passcode": passcode,
        }),
      );
      return response;
    } catch (e) {
      logger.e("Login user api failed. \n ${e.toString()}");
      rethrow;
    }
  }
}
