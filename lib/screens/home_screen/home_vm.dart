// ignore_for_file: use_build_context_synchronously

import 'package:fetcch_wallet/main.dart';
import 'package:fetcch_wallet/model/userModel.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/services/getter_repo.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/nav_constants.dart';

class HomeViewModel extends ChangeNotifier {
  late int _currentIndex = 0;
  late bool _isLoading = false;
  final GetterRepo _getterRepo = GetterRepo();
  late UserModel _userModel;

  // Getters
  int get currentIndex => _currentIndex;
  bool get isLoading => _isLoading;
  UserModel get userModel => _userModel;

  initialise(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString(ConstText.accessTokenKey);
    initController();
    logger.i('access token :: $accessToken');

    getUser(context);
  }

  void initController() {}

  void tabChange(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  void getUser(BuildContext context) async {
    Response response;
    response =
        await _getterRepo.getUser('${firebseAuth?.email}', '$accessToken');

    if (response.statusCode == 202 || response.statusCode == 200) {
      _userModel = userModelFromJson(response.body);
      CreateAccountScreenViewModel().setPayId(_userModel.data.identity);
      notifyListeners();
    } else {
      logger.log(Level.error,
          "Login user failed ${response.body} and status code was ${response.statusCode}");
    }
  }

  Future<void> signOut() async {
    _isLoading = true;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    FirebaseAuth.instance.signOut();
    prefs.clear();
    navService.pushNamedAndRemoveUntil(
      NavigationConstants.GETSTARTEDROUTE,
      args: true,
    );
    _isLoading = false;
    notifyListeners();
  }
}
