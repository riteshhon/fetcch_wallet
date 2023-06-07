import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';

import 'utils/nav_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
      initialRoute: NavigationConstants.GETSTARTEDROUTE,
      routes: NavigationConstants.routes,
      // home: GetStartedScreen(),
    );
  }
}
