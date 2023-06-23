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
  ) async {
    try {
      Response response = await http.get(
        Uri.parse('${ConstText.baseUrl}/user?email=ritesh@gmail.com'),
        headers: {
          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8',
          'host': "wallet-api.fetcch.xyz",
          'Accept': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6InJpdGVzaEBnbWFpbC5jb20iLCJpYXQiOjE2ODc1MTUwODgsImV4cCI6MTY4NzUxNjg4OH0.MGBizkljIkztJjzmhqkAGclVNqDjwjjNrBZLpfaCJ7I',
        },
      );
      print(response.body);

      /// all the decoding part is been done by the model file.
      return response;
    } catch (e) {
      logger.e("Login user api failed. \n ${e.toString()}");
      rethrow;
    }
  }
}
