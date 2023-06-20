import 'package:fetcch_wallet/screens/login_screen/login_screen_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>(); //key for form
    return ViewModelBuilder<LoginScreenViewModel>.reactive(
      viewModelBuilder: () => LoginScreenViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: UiConstants.mainColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: StatefulBuilder(
              builder: (context, setState) {
                return Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: UiConstants.bgColorGrey,
                          ),
                          margin: const EdgeInsets.only(top: 40),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back_ios_new_rounded),
                            iconSize: 22,
                            color: UiConstants.whiteColor,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            'Create Account',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: UiConstants.titleColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: UiConstants.lightGreyColor),
                            borderRadius: BorderRadius.circular(10),
                            color: UiConstants.bgColorGrey,
                          ),
                          child: TextFormField(
                            controller: viewModel.nameController,
                            validator: (value) {
                              return viewModel.validateName(value);
                            },
                            maxLines: 1,
                            cursorColor: UiConstants.whiteColor,
                            style: const TextStyle(
                              color: UiConstants.lightGreyColor,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter name",
                              hintStyle: const TextStyle(
                                  color: UiConstants.lightGreyColor,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: UiConstants.lightGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: UiConstants.lightGreyColor),
                            borderRadius: BorderRadius.circular(10),
                            color: UiConstants.bgColorGrey,
                          ),
                          child: TextFormField(
                            controller: viewModel.emailIdController,
                            validator: (value) {
                              return viewModel.validateEmailId(value);
                            },
                            maxLines: 1,
                            cursorColor: UiConstants.whiteColor,
                            style: const TextStyle(
                              color: UiConstants.lightGreyColor,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter email id",
                              hintStyle: const TextStyle(
                                  color: UiConstants.lightGreyColor,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: UiConstants.lightGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: UiConstants.lightGreyColor),
                            borderRadius: BorderRadius.circular(10),
                            color: UiConstants.bgColorGrey,
                          ),
                          child: TextFormField(
                            controller: viewModel.identityController,
                            validator: (value) {
                              return viewModel.validateIdentity(value);
                            },
                            maxLines: 1,
                            cursorColor: UiConstants.whiteColor,
                            style: const TextStyle(
                              color: UiConstants.lightGreyColor,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter identity",
                              hintStyle: const TextStyle(
                                  color: UiConstants.lightGreyColor,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: UiConstants.lightGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: UiConstants.lightGreyColor),
                            borderRadius: BorderRadius.circular(10),
                            color: UiConstants.bgColorGrey,
                          ),
                          child: TextFormField(
                            controller: viewModel.passController,
                            validator: (value) {
                              return viewModel.validatePasscode(value);
                            },
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            cursorColor: UiConstants.whiteColor,
                            style: const TextStyle(
                              color: UiConstants.lightGreyColor,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              hintText: "Enter passcode",
                              hintStyle: const TextStyle(
                                  color: UiConstants.lightGreyColor,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: UiConstants.lightGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        // Create Account Button
                        Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            const Color(0xFFFBFBFB)),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    formKey.currentState?.validate();
                                    if (formKey.currentState?.validate() ==
                                        true) {
                                      viewModel.createUser();
                                    }
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                        color: UiConstants.mainColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
