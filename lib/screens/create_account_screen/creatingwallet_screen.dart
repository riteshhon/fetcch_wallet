import 'package:blur/blur.dart';
import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CreatingWalletScreen extends StatefulWidget {
  const CreatingWalletScreen({super.key});

  @override
  State<CreatingWalletScreen> createState() => _CreatingWalletScreenState();
}

class _CreatingWalletScreenState extends State<CreatingWalletScreen> {
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
                const Spacer(),
                const Text(
                  'Creating Wallet',
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please Wait while we create your wallet.',
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                // First row line 1
                const Spacer(),
                Center(
                  child: SpinKitCubeGrid(
                    size: 80,
                    itemBuilder: (BuildContext context, int index) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(width: 4),
                          color: UiConstants.whiteColor,
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
