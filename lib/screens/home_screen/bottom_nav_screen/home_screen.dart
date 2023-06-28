// ignore_for_file: must_be_immutable

import 'package:fetcch_wallet/screens/home_screen/home_vm.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
    this.viewModel,
    required this.mainContext,
  });

  HomeViewModel? viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiConstants.mainColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    'Pay.',
                    style: TextStyle(
                      fontSize: 46,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                      color: UiConstants.titleColor,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.qr_code_scanner_rounded,
                    color: UiConstants.whiteColor,
                    size: 36,
                  ),
                ),
                const SizedBox(width: 26),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: UiConstants.bgColorGrey,
                    boxShadow: [
                      BoxShadow(
                        color: UiConstants.lightGreyColor,
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 48, // Image radius
                    backgroundColor: UiConstants.whiteColor,
                    backgroundImage: NetworkImage(
                        'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Isolated-Transparent-Picture.png'),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    "\$3563",
                    style: TextStyle(
                      fontSize: 34,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                      color: UiConstants.titleColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      ".20",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: UiConstants.titleColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  width: 160,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_upward_rounded,
                        color: UiConstants.bgColorGrey),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        UiConstants.whiteColor,
                      ),
                    ),
                    label: const Text(
                      'Pay',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: UiConstants.bgColorGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 160,
                  height: 50,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_downward_rounded,
                        color: UiConstants.bgColorGrey),
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: const MaterialStatePropertyAll(
                        UiConstants.whiteColor,
                      ),
                    ),
                    label: const Text(
                      'Request',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: UiConstants.bgColorGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
