import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SecureWallet2Screen extends StatelessWidget {
  const SecureWallet2Screen({super.key});

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
                    const Spacer(),
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 140.0,
                                child: StepProgressIndicator(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  totalSteps: 5,
                                  currentStep: 2,
                                  size: 8,
                                  padding: 0,
                                  selectedColor: UiConstants.whiteColor,
                                  unselectedColor: UiConstants.bgColorGrey,
                                  roundedEdges: Radius.circular(80),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "2/5",
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
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Secure Your \nWallet',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'Secure your wallets ',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: UiConstants.subTitleColor,
                      ),
                    ),
                    Text(
                      'Seed phrase',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: UiConstants.titleColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Icon(
                      Icons.question_mark_rounded,
                      color: UiConstants.whiteColor,
                      size: 17,
                    ),
                    Text(
                      'Why is it important?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),

                const SizedBox(height: 20),
                //
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Dont risk losing your funds. protect your wallet by saving your seed phrase in a place you trust. Its the only way to recover your wallet if you get locked out of the app or get a new device.',
                        style: TextStyle(
                          fontSize: 14,
                          color: UiConstants.describeColor,
                        ),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFFFBFBFB)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            navService.pushNamed(
                                NavigationConstants.BACKUPWALLETROUTE);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Continue",
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
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
