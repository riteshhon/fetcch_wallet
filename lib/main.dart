// ignore_for_file: deprecated_member_use

import 'package:fetcch_wallet/utils/auth_services.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'utils/nav_constants.dart';

// void main() {
//   print('main ${ConstText.isLogged}');
//   runApp(const MyApp());
// }

bool? isLogin = false;
bool? isPasscode = false;
String? passcodeVal = "";
String? payIdVal = "";
String? accessToken = "";
var logger = Logger();
final firebseAuth = FirebaseAuth.instance.currentUser;
FToast fToast = FToast();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthServices()));
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isLogin = prefs.getBool(ConstText.isLoggedKey);
  isPasscode = prefs.getBool(ConstText.isPassCodeKey);
  passcodeVal = prefs.getString(ConstText.isPassCodeValKey);
  payIdVal = prefs.getString(ConstText.isPayIdKey);
  accessToken = prefs.getString(ConstText.accessTokenKey);
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    logger.i(
        "firebseAuth :: ${firebseAuth?.uid} \nlogin :: $isLogin\npasscode :: $isPasscode\npasscode val :: $passcodeVal\npayid :: $payIdVal \nAccess Token :: $accessToken");
    return MaterialApp(
      useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigationKey,
      title: 'Fetcch Wallet',
      theme: ThemeData(
        fontFamily: "Jost",
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: UiConstants.mainColor,
          secondary: UiConstants.secondaryColor,
        ),
      ),
      initialRoute: firebseAuth?.uid == null
          ? NavigationConstants.GETSTARTEDROUTE
          : passcodeVal == null
              ? NavigationConstants.PROTECTWALLETROUTE
              : payIdVal == null
                  ? NavigationConstants.CREATEPAYIDROUTE
                  : NavigationConstants.HOMESCREENROUTE,
      routes: NavigationConstants.routes,
    );
  }
}
