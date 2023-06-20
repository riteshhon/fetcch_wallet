import 'package:fetcch_wallet/screens/home_screen/home_vm.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({
    super.key,
    required this.viewModel,
    required this.mainContext,
  });

  HomeViewModel viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiConstants.mainColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        UiConstants.bgColorGrey,
                      ),
                      side: const MaterialStatePropertyAll(
                        BorderSide(
                          color: UiConstants.lightGreyColor,
                        ),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: const [
                          Text(
                            "ritesh@pay",
                            style: TextStyle(
                              color: UiConstants.whiteColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.copy_rounded,
                            size: 18,
                            color: UiConstants.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  const SizedBox(width: 10),
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
              const SizedBox(height: 40),
              // Setting Screen Content
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Dsiplay",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Backup",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Security",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Notifications",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    UiConstants.bgColorGrey,
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(
                      color: UiConstants.bgColorGrey,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 6),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Help",
                          style: TextStyle(
                            color: UiConstants.whiteColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_rounded),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
