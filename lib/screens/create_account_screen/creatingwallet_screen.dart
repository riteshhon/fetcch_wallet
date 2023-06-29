import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:timer_count_down/timer_count_down.dart';

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
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Please Wait while we create your wallet.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                // First row line 1
                const Spacer(),
                Center(
                  child: Image.asset(
                    "assets/loading_fetcch.gif",
                    height: 240.0,
                    width: 240.0,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const SizedBox(height: 30),
                Countdown(
                  seconds: 20,
                  build: (BuildContext context, double time) => Container(),
                  interval: const Duration(seconds: 3),
                  onFinished: () {
                    navService.pushNamedAndRemoveUntil(
                        NavigationConstants.HOMESCREENROUTE);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
