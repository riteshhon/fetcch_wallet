import 'dart:convert';

import 'package:fetcch_wallet/model/loginUserModel.dart';
import 'package:fetcch_wallet/model/userModel.dart';
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
    logger.i("user data \n ${name} \n ${email} \n ${passcode} \n ${identity}");

    try {
      Response response = await http.post(
        Uri.parse('https://wallet-api.fetcch.xyz/user'),
        headers: {
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
        },
        body: {
          "email": "ritesh@viit.ac.in",
          "passcode": "555566",
          "identity": "B_74_ Ritesh Hon",
          "name": "ritesh@fetcch"
        },
      );
      // userFromJson(response.body);

      /// all the decoding part is been done by the model file.
      return response;
    } catch (e) {
      logger.e("Create user api failed. \n ${e.toString()}");
      rethrow;
    }
  }

  //Create user api call
  Future<Response> loginUser(
    String email,
    String passcode,
  ) async {
    final body1 = jsonEncode({
      "email": "ritesh@gmail.com",
      "passcode": "12345",
    });
    try {
      Response response = await http.post(
        Uri.parse('${ConstText.baseUrl}/user/login'),
        headers: {
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          'host': "wallet-api.fetcch.xyz",
        },
        body: body1,
      );

      /// all the decoding part is been done by the model file.
      return response;
    } catch (e) {
      logger.e("Login user api failed. \n ${e.toString()}");
      rethrow;
    }
  }
}
