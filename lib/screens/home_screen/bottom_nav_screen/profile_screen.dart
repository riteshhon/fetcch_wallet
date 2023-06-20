import 'package:fetcch_wallet/screens/home_screen/home_vm.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: UiConstants.bgColorGrey,
                    ),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      iconSize: 22,
                      color: UiConstants.whiteColor,
                    ),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: UiConstants.titleColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  height: 120,
                  width: 120,
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
                  child: CircleAvatar(
                    radius: 48, // Image radius
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8, right: 2),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: UiConstants.bgColorGrey,
                              border:
                                  Border.all(color: UiConstants.lightGreyColor),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Icon(
                                Icons.edit,
                                size: 16,
                                color: UiConstants.whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    backgroundColor: UiConstants.whiteColor,
                    backgroundImage: const NetworkImage(
                        'https://www.pngmart.com/files/22/User-Avatar-Profile-PNG-Isolated-Transparent-Picture.png'),
                  ),
                ),
              ),
              // Profile
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your ID',
                  style: TextStyle(
                    color: UiConstants.whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  // border: Border.all(color: UiConstants.whiteColor),
                  borderRadius: BorderRadius.circular(10),
                  color: UiConstants.bgColorGrey,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'ritesh@pay',
                    style: TextStyle(
                      color: UiConstants.lightGreyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'You can’t change ID after Setting it ',
                  style: TextStyle(
                    color: UiConstants.lightGreyColor,
                    fontSize: 12,
                  ),
                ),
              ),
              // Default address
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Default Address',
                  style: TextStyle(
                    color: UiConstants.whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  // border: Border.all(color: UiConstants.whiteColor),
                  borderRadius: BorderRadius.circular(10),
                  color: UiConstants.bgColorGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Polygon',
                        style: TextStyle(
                          color: UiConstants.lightGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: Image.network(
                            'https://altcoinsbox.com/wp-content/uploads/2023/03/matic-logo.png'),
                      ),
                    ],
                  ),
                ),
              ),
              // Ethereum address
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Secondary Address',
                  style: TextStyle(
                    color: UiConstants.whiteColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  // border: Border.all(color: UiConstants.whiteColor),
                  borderRadius: BorderRadius.circular(10),
                  color: UiConstants.bgColorGrey,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Ethereum',
                        style: TextStyle(
                          color: UiConstants.lightGreyColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: Image.network(
                            'https://www.pngall.com/wp-content/uploads/10/Ethereum-Logo-PNG-Pic.png'),
                      ),
                    ],
                  ),
                ),
              ),
              // Save Button
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.content_copy_rounded,
                    color: UiConstants.bgColorGrey,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      UiConstants.whiteColor,
                    ),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                  label: const Text(
                    'Save',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: UiConstants.bgColorGrey,
                      fontSize: 14,
                    ),
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
