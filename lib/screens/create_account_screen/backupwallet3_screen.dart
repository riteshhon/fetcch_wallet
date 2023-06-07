import 'package:blur/blur.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/screens/create_account_screen/selectword4_screen.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class BackupWallet3Screen extends StatelessWidget {
  const BackupWallet3Screen({super.key});

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
                                  currentStep: 3,
                                  size: 8,
                                  padding: 0,
                                  selectedColor: UiConstants.whiteColor,
                                  unselectedColor: UiConstants.bgColorGrey,
                                  roundedEdges: Radius.circular(80),
                                ),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "3/5",
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
                  'Backup Your \nWallet',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Safeguard your funds with a secure wallet backup.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (viewModel.isReveal) {
                        viewModel.revealBlur(false);
                      } else {
                        viewModel.revealBlur(true);
                      }
                    },
                    child: SizedBox(
                      height: 160,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: UiConstants.whiteColor),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                'Backup Code Here',
                                style: TextStyle(
                                  color: UiConstants.titleColor,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ).blurred(
                            colorOpacity: 0.1,
                            blur: viewModel.blurVal,
                            blurColor: UiConstants.mainColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          !viewModel.isReveal
                              ? Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Icon(
                                          Icons.lock_rounded,
                                          size: 36,
                                          color: UiConstants.whiteColor,
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          'Tap to reveal your seed phrase',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: UiConstants.titleColor,
                                            fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Make sure no one is watching your screen.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            height: 1.5,
                                            fontWeight: FontWeight.w500,
                                            color: UiConstants.subTitleColor,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: UiConstants.whiteColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.copy,
                              size: 16,
                            ),
                            label: const Text(
                              'Copy to Clipboard',
                              style: TextStyle(
                                color: UiConstants.titleColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: UiConstants.whiteColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.download_outlined,
                              size: 18,
                            ),
                            label: const Text(
                              'Download',
                              style: TextStyle(
                                color: UiConstants.titleColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: UiConstants.whiteColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_to_drive_outlined,
                          size: 16,
                        ),
                        label: const Text(
                          'Save in Drive',
                          style: TextStyle(
                            color: UiConstants.titleColor,
                            fontSize: 14,
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
                            navService
                                .pushNamed(NavigationConstants.SELECTWORDROUTE);
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
