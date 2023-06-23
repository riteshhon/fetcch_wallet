import 'package:fetcch_wallet/main.dart';
import 'package:fetcch_wallet/model/userModel.dart';
import 'package:fetcch_wallet/services/getter_repo.dart';
import 'package:fetcch_wallet/services/post_repo.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenViewModel extends ChangeNotifier {
  //Controller variables
  late TextEditingController _emailIdController;
  late TextEditingController _passController;
  late TextEditingController _nameController;
  late TextEditingController _identityController;
  bool _creatingUser = false;
  final GetterRepo _getterRepo = GetterRepo();
  final PostRepo _postRepo = PostRepo();
  late Logger _logger;

  // Models
  late UserModel _userModel;

  // Getters
  TextEditingController get emailIdController => _emailIdController;
  TextEditingController get passController => _passController;
  TextEditingController get nameController => _nameController;
  TextEditingController get identityController => _identityController;
  bool get creatingUser => _creatingUser;
  UserModel get userModel => _userModel;

  void initialise(BuildContext context) {
    initController();
  }

  void initController() {
    _emailIdController = TextEditingController();
    _passController = TextEditingController();
    _nameController = TextEditingController();
    _identityController = TextEditingController();
  }

  String? validateName(value) {
    notifyListeners();
    if (value.toString().isNotEmpty) {
      //allow upper and lower case alphabets and space
      return null;
    } else {
      return "Enter the name";
    }
  }

  String? validateEmailId(value) {
    notifyListeners();
    if (value.toString().isNotEmpty) {
      //allow upper and lower case alphabets and space
      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
          .hasMatch(value.toString())) {
        return "Enter the valid email id";
      }
    } else {
      return "Enter the email id";
    }
    return null;
  }

  String? validateIdentity(value) {
    notifyListeners();
    if (value.toString().isNotEmpty) {
      //allow upper and lower case alphabets and space
      return null;
    } else {
      return "Enter the identity";
    }
  }

  String? validatePasscode(value) {
    notifyListeners();
    if (value.toString().isNotEmpty) {
      //allow upper and lower case alphabets and space
      if (value.toString().length < 6) {
        return "Enter the passcode atleast 6 digit";
      }
      return null;
    } else {
      return "Enter the passcode";
    }
  }

  createUser() async {
    // ignore: unrelated_type_equality_checks
    _creatingUser = true;
    notifyListeners();
    Response response = await _postRepo.createUser(
      _nameController.text,
      _emailIdController.text,
      _passController.text,
      _identityController.text,
    );
    print(response.body);
    if (response.statusCode == 202 || response.statusCode == 200) {
      //Response sucessfully recieved
      _userModel = userFromJson(response.body);
      _creatingUser = false;
      notifyListeners();
      SharedPreferences pref = await SharedPreferences.getInstance();
      navService.pushNamedAndRemoveUntil(
        NavigationConstants.HOMESCREENROUTE,
        predicate: (p0) => false,
      );
    } else {
      //Failed to fetch response
      _logger.log(Level.error,
          "Failed to fetch product definition ${response.statusCode} and got\n ${response.body}");
      _creatingUser = false;
      notifyListeners();
    }
  }
}
