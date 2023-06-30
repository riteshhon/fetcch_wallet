import 'package:fetcch_wallet/screens/home_screen/bottom_nav_screen/profile_screen.dart';
import 'package:fetcch_wallet/screens/home_screen/bottom_nav_screen/setting_screen.dart';
import 'package:fetcch_wallet/screens/home_screen/home_vm.dart';
import 'package:fetcch_wallet/utils/ui_constant.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:unicons/unicons.dart';
import 'bottom_nav_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.initialise(context);
      },
      builder: (context, viewModel, child) {
        final tabs = [
          HomeScreen(
            mainContext: context,
            viewModel: viewModel,
          ),
          ProfileScreen(
            mainContext: context,
            viewModel: viewModel,
          ),
          SettingScreen(
            mainContext: context,
            viewModel: viewModel,
          ),
        ];
        return Scaffold(
          backgroundColor: UiConstants.mainColor,
          bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: BottomNavigationBar(
                onTap: (value) {
                  viewModel.tabChange(value);
                },
                currentIndex: viewModel.currentIndex,
                selectedItemColor: UiConstants.whiteColor,
                backgroundColor: UiConstants.mainColor,
                unselectedItemColor: UiConstants.greyColor2,
                iconSize: 26,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(UniconsLine.estate),
                    label: 'Home',
                    backgroundColor: UiConstants.whiteColor,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      UniconsLine.user,
                    ),
                    label: 'Profile',
                    backgroundColor: UiConstants.whiteColor,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(UniconsLine.setting),
                    label: 'Settings',
                    backgroundColor: UiConstants.mainColor,
                  ),
                ],
              )
              //  GNav(
              //   onTabChange: (value) {
              //     viewModel.tabChange(value);
              //   },
              //   selectedIndex: viewModel.currentIndex,
              //   tabBackgroundColor: UiConstants.bgColorGrey,
              //   activeColor: UiConstants.lightGreyColor,
              //   gap: 8,
              //   tabMargin: const EdgeInsets.only(top: 12, bottom: 12),
              //   padding: const EdgeInsets.only(
              //     top: 10,
              //     bottom: 10,
              //     left: 24,
              //     right: 24,
              //   ),
              //   tabs: [
              //     GButton(
              //       icon: Icons.home_rounded,
              //       text: "Home",
              //       iconColor: UiConstants.lightGreyColor,
              //       textColor: UiConstants.lightGreyColor,
              //       onPressed: () {},
              //     ),
              //     GButton(
              //       icon: Icons.settings,
              //       text: "Settings",
              //       iconColor: UiConstants.lightGreyColor,
              //       textColor: UiConstants.lightGreyColor,
              //       onPressed: () {},
              //     ),
              //     GButton(
              //       icon: Icons.account_circle_sharp,
              //       text: "My Profile",
              //       iconColor: UiConstants.lightGreyColor,
              //       textColor: UiConstants.lightGreyColor,
              //       onPressed: () {},
              //     ),
              //   ],
              // ),
              ),
          body: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: tabs[viewModel.currentIndex],
          ),
        );
      },
    );
  }
}
