import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SelectWord4Screen extends StatelessWidget {
  const SelectWord4Screen({super.key});

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
                                  currentStep: 4,
                                  size: 8,
                                  padding: 0,
                                  selectedColor: UiConstants.whiteColor,
                                  unselectedColor: UiConstants.bgColorGrey,
                                  roundedEdges: Radius.circular(80),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "4/5",
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
                  'You saved it, \nright?',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Verify that you saved your secret recovery phrase by tapping the first(1st) then last(12th) word.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                // First row line 1
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word1) {
                            // on unselect
                            viewModel.updateWord1(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord1(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word1
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Cat',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word2) {
                            // on unselect
                            viewModel.updateWord2(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord2(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word2
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Dance',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word3) {
                            // on unselect
                            viewModel.updateWord3(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord3(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word3
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Cute',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Second row line 2
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word4) {
                            // on unselect
                            viewModel.updateWord4(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord4(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word4
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Mask',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word5) {
                            // on unselect
                            viewModel.updateWord5(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord5(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word5
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Virus',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word6) {
                            // on unselect
                            viewModel.updateWord6(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord6(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word6
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Teddy',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Third row line 3
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word7) {
                            // on unselect
                            viewModel.updateWord7(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord7(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word7
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Lamb',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word8) {
                            // on unselect
                            viewModel.updateWord8(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord8(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word8
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Moon',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word9) {
                            // on unselect
                            viewModel.updateWord9(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord9(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word9
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Kiss',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Four row line 4
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word10) {
                            // on unselect
                            viewModel.updateWord10(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord10(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word10
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Meta',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word11) {
                            // on unselect
                            viewModel.updateWord11(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord11(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word11
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Panda',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          if (viewModel.word12) {
                            // on unselect
                            viewModel.updateWord12(context, -1);
                          } else {
                            // on select
                            viewModel.updateWord12(context, 1);
                          }
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: viewModel.word12
                                    ? UiConstants.blueColor
                                    : UiConstants.lightGreyColor,
                              ),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            UiConstants.bgColorGrey,
                          ),
                        ),
                        child: const Text(
                          'Lord',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
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
                            if (viewModel.selectedWords == 2) {
                              navService.pushNamed(
                                  NavigationConstants.CREATEPAYIDROUTE);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Select atlease 2 words',
                                    style: TextStyle(
                                      color: UiConstants.whiteColor,
                                    ),
                                  ),
                                  backgroundColor: UiConstants.redColor,
                                ),
                              );
                            }
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
