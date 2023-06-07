import 'package:blur/blur.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CreatePayId5Screen extends StatelessWidget {
  const CreatePayId5Screen({super.key});

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
                                  currentStep: 5,
                                  size: 8,
                                  padding: 0,
                                  selectedColor: UiConstants.whiteColor,
                                  unselectedColor: UiConstants.bgColorGrey,
                                  roundedEdges: Radius.circular(80),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "5/5",
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
                  'Create your \nPay. ID',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Create your unique pay ID to send & receive assets from others.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                // First row line 1
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: UiConstants.lightGreyColor),
                    borderRadius: BorderRadius.circular(10),
                    color: UiConstants.bgColorGrey,
                  ),
                  child: TextField(
                    maxLines: 1,
                    cursorColor: UiConstants.whiteColor,
                    style: const TextStyle(
                      color: UiConstants.lightGreyColor,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        hintText: "Enter your ID here",
                        hintStyle: const TextStyle(
                            color: UiConstants.lightGreyColor,
                            fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: UiConstants.lightGreyColor,
                          ),
                        ),
                        suffixText: ' @pay',
                        suffixStyle: const TextStyle(
                          color: UiConstants.titleColor,
                          fontWeight: FontWeight.w800,
                        )),
                  ),
                ),
                const Spacer(),

                const SizedBox(height: 20),
                //
                Center(
                  child: Column(
                    children: [
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
                              NavigationConstants.CREATINGWALLETROUTE,
                            );
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
