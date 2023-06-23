// ignore_for_file: use_build_context_synchronously

import 'package:fetcch_wallet/main.dart';
import 'package:fetcch_wallet/model/loginUserModel.dart';
import 'package:fetcch_wallet/model/userModel.dart';
import 'package:fetcch_wallet/services/post_repo.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:fetcch_wallet/widgets/custom_dialogboxes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccountScreenViewModel extends ChangeNotifier {
  bool _isCheck = false;
  bool _isReveal = false;
  double _blurVal = 6;
  bool _show2Warning = false;
  late TextEditingController _payIdController;
  final PostRepo _postRepo = PostRepo();
  late LoginUserModel _loginUserModel;
  late UserModel _userModel;

  // select word
  bool _word1 = false,
      _word2 = false,
      _word3 = false,
      _word4 = false,
      _word5 = false,
      _word6 = false,
      _word7 = false,
      _word8 = false,
      _word9 = false,
      _word10 = false,
      _word11 = false,
      _word12 = false;
  int _selectedWords = 0;
  String _passCodeValue = "";
  late PageController _mainController;

  bool get isCheck => _isCheck;
  bool get isReveal => _isReveal;
  double get blurVal => _blurVal;

  // select words
  bool get word1 => _word1;
  bool get word2 => _word2;
  bool get word3 => _word3;
  bool get word4 => _word4;
  bool get word5 => _word5;
  bool get word6 => _word6;
  bool get word7 => _word7;
  bool get word8 => _word8;
  bool get word9 => _word9;
  bool get word10 => _word10;
  bool get word11 => _word11;
  bool get word12 => _word12;
  String get passCodeValue => _passCodeValue;
  PageController get mainController => _mainController;
  TextEditingController get payIdController => _payIdController;
  LoginUserModel get loginUserModel => _loginUserModel;
  UserModel get userModel => _userModel;

  int get selectedWords => _selectedWords;

  void initialise(BuildContext context) {
    initController();
  }

  void initController() {
    _mainController = PageController();
    _payIdController = TextEditingController();
  }

  void checkBoxChecked(bool value) {
    _isCheck = value;
    notifyListeners();
  }

  void revealBlur(bool value) {
    _isReveal = value;
    if (_isReveal) {
      _blurVal = 0;
    } else {
      _blurVal = 6;
    }
    notifyListeners();
  }

  void setPassCode(String value) {
    _passCodeValue = value;
    notifyListeners();
  }

  void matchPasscode(BuildContext context, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (value == _passCodeValue) {
      SuccessAlertBox(
        context: context,
        buttonText: "Continue",
        messageText: "Passcode successfully set",
        title: "Success",
        buttonOnClick: () {
          Navigator.of(context).pop();
          navService
              .pushNamedAndRemoveUntil(NavigationConstants.CREATEPAYIDROUTE);
        },
      );
      prefs.setString(ConstText.isPassCodeValKey, value);
      prefs.setBool(ConstText.isPassCodeKey, true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Passcode is not match',
            style: TextStyle(
              color: UiConstants.whiteColor,
            ),
          ),
          backgroundColor: UiConstants.darkColorPurple,
        ),
      );
    }
    notifyListeners();
  }

  void setPayId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(ConstText.isPayIdKey, "${_payIdController.text}@pay");
  }

  void updateWord1(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word1) {
      // on unselect
      _word1 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word1 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord2(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word2) {
      // on unselect
      _word2 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word2 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord3(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word3) {
      // on unselect
      _word3 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word3 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord4(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word4) {
      // on unselect
      _word4 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word4 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord5(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word5) {
      // on unselect
      _word5 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word5 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord6(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word6) {
      // on unselect
      _word6 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word6 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord7(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word7) {
      // on unselect
      _word7 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word7 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord8(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word8) {
      // on unselect
      _word8 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word8 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord9(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word9) {
      // on unselect
      _word9 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word9 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord10(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word10) {
      // on unselect
      _word10 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word10 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord11(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word11) {
      // on unselect
      _word11 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word11 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void updateWord12(BuildContext context, int value) {
    if (value < 0) {
      _selectedWords = _selectedWords - 1;
    } else {
      _selectedWords += value;
    }
    if (_word12) {
      // on unselect
      _word12 = false;
    } else if (_selectedWords <= 2) {
      // on select
      _word12 = true;
    }
    checkWordsCount(context, _selectedWords);
    notifyListeners();
  }

  void checkWordsCount(BuildContext context, int value) {
    if (value <= 2) {
    } else {
      _selectedWords = 2;
      if (_show2Warning == false) {
        _show2Warning = true;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Already selected 2 words',
              style: TextStyle(
                color: UiConstants.whiteColor,
              ),
            ),
            backgroundColor: UiConstants.redColor,
          ),
        );
      }
    }
    notifyListeners();
  }

  void createUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _passCodeValue = prefs.getString(ConstText.isPassCodeValKey).toString();

    Response response;
    // response = await _postRepo.createUser('${firebseAuth!.displayName}',
    //     '${firebseAuth!.email}', _passCodeValue, _payIdController.text);

    // print(response.body);
    // if (response.statusCode == 202 || response.statusCode == 200) {
    //   _userModel = userFromJson(response.body);
    //   print(_userModel.passcode);
    //   notifyListeners();
    // } else {
    //   logger.log(Level.error,
    //       "Create user failed ${response.body} and status code was ${response.statusCode}");
    // }

    response = await _postRepo.loginUser('ritesh@viit.ac.in', '555566');
    print(response.body);

    logger.i('${firebseAuth!.displayName}'
        " :: "
        '${firebseAuth!.email}'
        " :: "
        '$_passCodeValue'
        " :: "
        '${_payIdController.text}');
    prefs.setBool(ConstText.isLoggedKey, true);
  }
}
