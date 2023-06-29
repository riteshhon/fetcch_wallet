import 'package:fetcch_wallet/screens/create_account_screen/createaccount_vm.dart';
import 'package:fetcch_wallet/utils/auth_services.dart';
import 'package:fetcch_wallet/utils/nav_constants.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:stacked/stacked.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountScreenViewModel>.reactive(
      viewModelBuilder: () => CreateAccountScreenViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(context),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: UiConstants.mainColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: UiConstants.bgColorGrey,
                  ),
                  margin: const EdgeInsets.only(top: 40),
                  child: IconButton(
                    onPressed: () => navService
                        .pushNamed(NavigationConstants.GETSTARTEDROUTE),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    iconSize: 22,
                    color: UiConstants.whiteColor,
                  ),
                ),
                const SizedBox(height: 48),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: UiConstants.titleColor,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Login and start your journey',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: UiConstants.subTitleColor,
                  ),
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Text(
                  'We provide various methods to onboard you, Click on what you would like to continue with and its pretty easy after that.',
                  style: TextStyle(
                    fontSize: 15,
                    color: UiConstants.describeColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: 323,
                  height: 73,
                  child: ElevatedButton(
                    onPressed: () {
                      AuthServices.signInWithGoogle(context: context);
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(89.0),
                          side: const BorderSide(
                            color: UiConstants.lightGreyColor,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 15),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset('assets/icons/ic_google.png'),
                        ),
                        const Spacer(),
                        const Text(
                          'Connect with Google',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
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
