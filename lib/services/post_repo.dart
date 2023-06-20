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
    String password,
    String identity,
  ) async {
    try {
      Response response = await http.post(
        Uri.parse('${ConstText.baseUrl}/user'),
        headers: {
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
        },
        body: {
          'name': name,
          'email': email,
          'passcode': password,
          'identity': "$identity@fetcch",
        },
      );

      /// all the decoding part is been done by the model file.
      return response;
    } catch (e) {
      logger.e("Create user api failed. \n ${e.toString()}");
      rethrow;
    }
  }
}
