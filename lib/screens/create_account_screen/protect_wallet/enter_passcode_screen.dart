import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 44),
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
            const SizedBox(height: 48),
            const Text(
              'Enter Passcode',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: UiConstants.titleColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Set a 6 Digit Passcode to unlock your wallet each time you use your wallet. It can’t be used to recover your wallet.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: UiConstants.subTitleColor,
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Pinput(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                pinContentAlignment: Alignment.center,
                onCompleted: (value) {
                  viewModel.setPassCode(value);
                  viewModel.mainController.nextPage(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.linear,
                  );
                },
                autofocus: true,
                closeKeyboardWhenCompleted: true,
                defaultPinTheme: const PinTheme(
                  decoration: BoxDecoration(
                    color: UiConstants.mainColor,
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: UiConstants.greyColor1,
                      ),
                    ),
                  ),
                  textStyle: TextStyle(
                    color: UiConstants.whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                obscuringWidget: Container(
                  color: UiConstants.whiteColor,
                ),
                showCursor: false,
                length: 6,
                keyboardType: TextInputType.number,
              ),
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
        padding: const EdgeInsets.symmetric(horizontal: 44),
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
            const SizedBox(height: 48),
            const Text(
              'Re-Enter Passcode',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                color: UiConstants.titleColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Verify your 6 Digit Passcode',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: UiConstants.subTitleColor,
              ),
            ),
            const SizedBox(height: 70),
            Center(
              child: Pinput(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                pinContentAlignment: Alignment.center,
                onCompleted: (value) {
                  viewModel.matchPasscode(context, value);
                },
                autofocus: true,
                closeKeyboardWhenCompleted: true,
                defaultPinTheme: const PinTheme(
                  decoration: BoxDecoration(
                    color: UiConstants.mainColor,
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: UiConstants.greyColor1,
                      ),
                    ),
                  ),
                  textStyle: TextStyle(
                    color: UiConstants.whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                showCursor: false,
                obscuringWidget: Container(
                  color: UiConstants.whiteColor,
                ),
                length: 6,
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
