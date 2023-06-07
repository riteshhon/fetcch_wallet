import 'package:fetcch_wallet/screens/create_account_screen/backupwallet3_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createpayid5_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/creatingwallet_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/protectwallet1_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/securewallet2_screen.dart';
import 'package:fetcch_wallet/screens/create_account_screen/selectword4_screen.dart';
import 'package:fetcch_wallet/screens/getstarted_screen/getstarted_screen_view.dart';
import 'package:fetcch_wallet/screens/login_screen/login_screen.dart';

class NavigationConstants {
  static const String GETSTARTEDROUTE = "/getstatred";
  static const String LOGINROUTE = "/login";
  static const String SIGNUPROUTE = "/signup";
  static const String CREATEACCOUNTROUTE = "/createaccount";
  static const String PROTECTWALLETROUTE = "/protectwallet";
  static const String SECUREWALLETROUTE = "/securewallet";
  static const String BACKUPWALLETROUTE = "/backupwallet";
  static const String SELECTWORDROUTE = "/securitycheck";
  static const String CREATEPAYIDROUTE = "/createpayid";
  static const String CREATINGWALLETROUTE = "/creatingwallet";

  static final routes = {
    GETSTARTEDROUTE: (context) => GetStartedScreen(),
    LOGINROUTE: (context) => LoginScreen(),
    CREATEACCOUNTROUTE: (context) => CreateAccountScreen(),
    PROTECTWALLETROUTE: (context) => ProtectWallet1Screen(),
    SECUREWALLETROUTE: (context) => SecureWallet2Screen(),
    BACKUPWALLETROUTE: (context) => BackupWallet3Screen(),
    SELECTWORDROUTE: (context) => SelectWord4Screen(),
    CREATEPAYIDROUTE: (context) => CreatePayId5Screen(),
    CREATINGWALLETROUTE: (context) => CreatingWalletScreen(),
  };
}
