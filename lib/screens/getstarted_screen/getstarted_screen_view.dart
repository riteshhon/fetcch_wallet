import 'package:fetcch_wallet/screens/getstarted_screen/getstarted_screen_vm.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<GetStartedScreenViewModel>.reactive(
      viewModelBuilder: () => GetStartedScreenViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: UiConstants.mainColor,
        body: PageView(
          controller: viewModel.mainController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            //Page 1
            Page1(
              viewModel: viewModel,
              mainContext: context,
            ),

            // Page 2
            Page2(
              viewModel: viewModel,
              mainContext: context,
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
    required this.viewModel,
    required this.mainContext,
  });
  final GetStartedScreenViewModel viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                const Text(
                  'Pay.',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Simple. Elegant. Smooth',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Text(
                  'First application to truly provide a simplified payments on blockchain',
                  style: TextStyle(
                    fontSize: 14,
                    color: UiConstants.describeColor,
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Center(
                      child: SwipeableButtonView(
                        buttonColor: UiConstants.mainColor,
                        onFinish: () async {
                          viewModel.mainController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.linear,
                          );
                        },
                        isFinished: viewModel.isFinish,
                        onWaitingProcess: () {
                          Future.delayed(const Duration(seconds: 2), () {
                            viewModel.buttonOnSwipe(true);
                          });
                        },
                        activeColor: UiConstants.bgColorGrey,
                        buttonWidget: const Icon(
                          Icons.double_arrow_rounded,
                          color: UiConstants.whiteColor,
                        ),
                        buttonText: "Get Started",
                        buttontextstyle: const TextStyle(
                          color: UiConstants.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
    required this.viewModel,
    required this.mainContext,
  });
  final GetStartedScreenViewModel viewModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Spacer(),
                const Text(
                  'Pay.',
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w800,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Simple. Elegant. Smooth',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const SizedBox(height: 50),
                const Text(
                  'You need to Connect your Crypto Wallet here, Dont have one? Lets Create now!',
                  style: TextStyle(
                    fontSize: 14,
                    color: UiConstants.describeColor,
                  ),
                ),
                const SizedBox(height: 30),
                StatefulBuilder(
                  builder: (context, setState) {
                    return Center(
                      child: Column(
                        children: [
                          // Create wallet button
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                navService.pushNamed(
                                  NavigationConstants.CREATEACCOUNTROUTE,
                                );
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
                                'Create Wallet',
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
                              onPressed: () {},
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
                                'Connect Wallet',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
