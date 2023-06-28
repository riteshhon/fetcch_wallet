import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class GetterRepo with ChangeNotifier {
  Logger logger = Logger();

  //Create user api call
  Future<Response> getUser(
    String email,
    String token,
  ) async {
    try {
      Response response = await http.get(
        Uri.parse('${ConstText.baseUrl}/user?email=$email'),
        headers: {
          'content-type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      logger.i('Get user response \n${response.body}');
      return response;
    } catch (e) {
      logger.e("Get user api failed. \n ${e.toString()}");
      rethrow;
    }
  }
}
