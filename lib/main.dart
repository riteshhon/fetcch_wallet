import 'package:fetcch_wallet/utils/auth_services.dart';
import 'package:fetcch_wallet/utils/const_text.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';
import 'utils/nav_constants.dart';

// void main() {
//   print('main ${ConstText.isLogged}');
//   runApp(const MyApp());
// }

bool? isLogin = false;
bool? isPasscode = false;
String? passcodeVal = "";
String? payIdVal = "";
var logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().then((value) => Get.put(AuthServices()));
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isLogin = prefs.getBool(ConstText.isLoggedKey);
  isPasscode = prefs.getBool(ConstText.isPassCodeKey);
  passcodeVal = prefs.getString(ConstText.isPassCodeValKey);
  payIdVal = prefs.getString(ConstText.isPayIdKey);
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    logger.i(
        '${"login :: " + isLogin.toString() + "\npasscode :: " + isPasscode.toString() + "\npasscode val :: " + passcodeVal.toString() + "\npayid :: " + payIdVal.toString()}');
    return MaterialApp(
      useInheritedMediaQuery: true,
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationService.navigationKey,
      title: 'Fetcch Wallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: UiConstants.mainColor,
          secondary: UiConstants.secondaryColor,
        ),
      ),
      initialRoute: isPasscode == null
          ? NavigationConstants.PROTECTWALLETROUTE
          : payIdVal == null
              ? NavigationConstants.CREATEPAYIDROUTE
              : isLogin == true
                  ? NavigationConstants.HOMESCREENROUTE
                  : NavigationConstants.GETSTARTEDROUTE,
      routes: NavigationConstants.routes,
      // home: GetStartedScreen(),
    );
  }
}
