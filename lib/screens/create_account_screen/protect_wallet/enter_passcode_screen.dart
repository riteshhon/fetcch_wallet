import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PasscodeScreen extends StatelessWidget {
  const PasscodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountScreenViewModel>.reactive(
      viewModelBuilder: () => CreateAccountScreenViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: UiConstants.mainColor,
        body: PageView(
          controller: viewModel.mainController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //Page 1
            PasscodeView(
              viewModel: viewModel,
              mainContext: context,
            ),

            // Page 2
            ReEnterPasscodeView(
              viewModel: viewModel,
              mainContext: context,
            ),
          ],
        ),
      ),
    );
  }
}

// Passcode View
class PasscodeView extends StatelessWidget {
  const PasscodeView({
    super.key,
    required this.viewModel,
    required this.mainContext,
  });
  final CreateAccountScreenViewModel viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              ],
            ),
            const SizedBox(height: 60),
            const Text(
              'Enter Passcode',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 2,
                fontWeight: FontWeight.w800,
                color: UiConstants.titleColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Set a 6 Digit Passcode to unlock your wallet each time you use your wallet. It can’t be used to recover your wallet.',
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: UiConstants.subTitleColor,
              ),
            ),
            const SizedBox(height: 50),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              textStyle: const TextStyle(
                color: UiConstants.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (value) {
                viewModel.setPassCode(value);
                viewModel.mainController.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                );
              },
              clearText: true,
            ),
          ],
        ),
      ),
    );
  }
}

// ReEnter Passcode
class ReEnterPasscodeView extends StatelessWidget {
  const ReEnterPasscodeView({
    super.key,
    required this.viewModel,
    required this.mainContext,
  });
  final CreateAccountScreenViewModel viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              ],
            ),
            const SizedBox(height: 60),
            const Text(
              'Re-Enter Passcode',
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 2,
                fontWeight: FontWeight.w800,
                color: UiConstants.titleColor,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Verify your 6 Digit Passcode',
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: UiConstants.subTitleColor,
              ),
            ),
            const SizedBox(height: 95),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              textStyle: const TextStyle(
                color: UiConstants.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (value) {
                debugPrint(value);
                viewModel.matchPasscode(context, value);
              },
              clearText: true,
            ),
          ],
        ),
      ),
    );
  }
}
