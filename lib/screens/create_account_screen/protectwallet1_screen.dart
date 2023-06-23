import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProtectWallet1Screen extends StatelessWidget {
  const ProtectWallet1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountScreenViewModel>.reactive(
      viewModelBuilder: () => CreateAccountScreenViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: UiConstants.mainColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                      margin: const EdgeInsets.only(top: 40),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        iconSize: 22,
                        color: UiConstants.whiteColor,
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              SizedBox(
                                width: 140.0,
                                child: StepProgressIndicator(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  totalSteps: 5,
                                  padding: 0,
                                  currentStep: 1,
                                  size: 8,
                                  selectedColor: UiConstants.whiteColor,
                                  unselectedColor: UiConstants.bgColorGrey,
                                  roundedEdges: Radius.circular(80),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "1/5",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: UiConstants.titleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Protect Your \nWallet',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'The Extra Layer of security helps prevent someone with your phone from accessing your funds',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: Colors.white,
                      ),
                      child: Checkbox(
                        checkColor: UiConstants.mainColor,
                        activeColor: UiConstants.whiteColor,
                        value: viewModel.isCheck,
                        onChanged: (value) {
                          viewModel.checkBoxChecked(value!);
                        },
                      ),
                    ),
                    const Text(
                      'I agree to the ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: UiConstants.subTitleColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        ' terms ',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: UiConstants.whiteColor,
                        ),
                      ),
                    ),
                    const Text(
                      ' & ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: UiConstants.subTitleColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        ' privacy policy ',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: UiConstants.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (viewModel.isCheck) {
                              navService.pushNamed(
                                NavigationConstants.PASSCODESCREENROUTE,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Please accept the terms & privacy policy',
                                    style: TextStyle(
                                      color: UiConstants.whiteColor,
                                    ),
                                  ),
                                  backgroundColor: UiConstants.darkColorPurple,
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(
                                    color: UiConstants.lightGreyColor),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Use Passcode',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Connect wallet button
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            if (viewModel.isCheck) {
                              navService.pushNamed(
                                NavigationConstants.SECUREWALLETROUTE,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Please accept the terms & privacy policy',
                                    style: TextStyle(
                                      color: UiConstants.whiteColor,
                                    ),
                                  ),
                                  backgroundColor: UiConstants.darkColorPurple,
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: const BorderSide(
                                    color: UiConstants.lightGreyColor),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 74.0,
                              vertical: 18.0,
                            ),
                            child: Text(
                              'Use Biometrics',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
