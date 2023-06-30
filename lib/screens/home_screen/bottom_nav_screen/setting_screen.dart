// ignore_for_file: must_be_immutable

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
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        UiConstants.mainColor,
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
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
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
                    height: 70,
                    width: 70,
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
              const SizedBox(height: 46),
              // Setting Screen Content
              Column(
                children: [
                  textButton(
                    () {},
                    'Edit Profile',
                  ),
                  const SizedBox(height: 10),
                  textButton(
                    () {},
                    'Display',
                  ),
                  const SizedBox(height: 10),
                  textButton(
                    () {},
                    'Backup',
                  ),
                  const SizedBox(height: 10),
                  textButton(
                    () {},
                    'Security',
                  ),
                  const SizedBox(height: 10),
                  textButton(
                    () {},
                    'Notifications',
                  ),
                  const SizedBox(height: 10),
                  textButton(
                    () {},
                    'Help',
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const Text(
                'v2023.21.0(4534)',
                style: TextStyle(
                  color: UiConstants.describeColor,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                '©2023 Pay.  All rights reserved.',
                style: TextStyle(
                  color: UiConstants.whiteColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textButton(Function() onPressed, String label) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(
              color: UiConstants.whiteColor,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
