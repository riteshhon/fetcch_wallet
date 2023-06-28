// ignore_for_file: constant_identifier_names

import 'package:fetcch_wallet/screens/create_account_screen/backupwallet3_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createpayid5_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/creatingwallet_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/protect_wallet/enter_passcode_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/protectwallet1_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/securewallet2_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/selectword4_screen.dart';
import 'package:fetcch_wallet/screens/getstarted_screen/getstarted_screen_view.dart';
import 'package:fetcch_wallet/screens/home_screen/home.dart';

class NavigationConstants {
  static const String GETSTARTEDROUTE = "/getstatred";
  static const String SIGNUPROUTE = "/signup";
  static const String CREATEACCOUNTROUTE = "/createaccount";
  static const String PROTECTWALLETROUTE = "/protectwallet";
  static const String SECUREWALLETROUTE = "/securewallet";
  static const String BACKUPWALLETROUTE = "/backupwallet";
  static const String SELECTWORDROUTE = "/securitycheck";
  static const String CREATEPAYIDROUTE = "/createpayid";
  static const String CREATINGWALLETROUTE = "/creatingwallet";
  static const String HOMESCREENROUTE = "/home";
  static const String PASSCODESCREENROUTE = "/passcode";

  static final routes = {
    GETSTARTEDROUTE: (context) => const GetStartedScreen(),
    CREATEACCOUNTROUTE: (context) => const CreateAccountScreen(),
    PROTECTWALLETROUTE: (context) => const ProtectWallet1Screen(),
    SECUREWALLETROUTE: (context) => const SecureWallet2Screen(),
    BACKUPWALLETROUTE: (context) => const BackupWallet3Screen(),
    SELECTWORDROUTE: (context) => const SelectWord4Screen(),
    CREATEPAYIDROUTE: (context) => const CreatePayId5Screen(),
    CREATINGWALLETROUTE: (context) => const CreatingWalletScreen(),
    HOMESCREENROUTE: (context) => const Home(),
    PASSCODESCREENROUTE: (context) => const PasscodeScreen(),
  };
}
