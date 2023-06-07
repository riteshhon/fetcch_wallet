import 'package:flutter/material.dart';
import 'dart:math' as math;

class SizeConfig {
  // reference
  static var _mediaQueryData;

  // dimens
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double safeScreenHeight = 0;

  static double pixelRatio = 0;
  static double textScaleFactor = 0;

  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;

// old text sizes
  static double smallTextSize = 0;
  static double mediumTextSize = 0;
  static double largeTextSize = 0;
  static double cardTitleTextSize = 0;

// ui size constants
  static double cardBorderRadius = 0;
  static double globalMargin = 0;
  static double scaffoldMargin = 0;
  static var viewInsets;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    safeScreenHeight = _mediaQueryData.size.height -
        _mediaQueryData.padding.top -
        _mediaQueryData.padding.bottom;
    pixelRatio = _mediaQueryData.devicePixelRatio;
    textScaleFactor = _mediaQueryData.textScaleFactor;
    viewInsets = _mediaQueryData.padding;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    smallTextSize = blockSizeHorizontal * 2.4;
    mediumTextSize = blockSizeHorizontal * 3.2;
    largeTextSize = blockSizeHorizontal * 5;
    cardTitleTextSize = blockSizeHorizontal * 7;
    cardBorderRadius = 12;
    globalMargin = blockSizeHorizontal * 3;
    scaffoldMargin = blockSizeHorizontal * 5;
  }

  // TEXT SIZES
  static double get title68 => screenWidth * 0.181; //68
  static double get title50 => screenWidth * 0.133; //50
  static double get title0 => screenWidth * 0.106; //40
  static double get title1 => screenWidth * 0.093; //35
  static double get title2 => screenWidth * 0.08; //30
  static double get title3 => screenWidth * 0.066; //25
  static double get title4 => screenWidth * 0.064; //24
  static double get title5 => screenWidth * 0.058; //22
  static double get body0 => screenWidth * 0.053; //20
  static double get body1 => screenWidth * 0.048; //18
  static double get body2 => screenWidth * 0.042; //16
  static double get body3 => screenWidth * 0.037; //14
  static double get body4 => screenWidth * 0.032; //12;
  static double get body5 => screenWidth * 0.024; //8;

  // ICON SIZES
  static double get iconSize0 => screenWidth * 0.0533; //20
  static double get iconSize1 => screenWidth * 0.048; //16
  static double get iconSize2 => screenWidth * 0.033; //14
  static double get iconSize3 => screenWidth * 0.028; //12
  static double get iconSize4 => screenWidth * 0.019; //8
  static double get iconSize5 => screenWidth * 0.077; //32
  static double get iconSize5_5 => screenWidth * 0.120; //50
  static double get iconSize6 => screenWidth * 0.139; //50
  static double get iconSize7 => screenWidth * 0.194; //70

  // PADDINGS
  static double get padding1 => screenWidth * 0.0024;
  static double get padding2 => screenWidth * 0.0048;
  static double get padding3 => screenWidth * 0.0072;
  static double get padding4 => screenWidth * 0.0096;
  static double get padding6 => screenWidth * 0.014;
  static double get padding8 => screenWidth * 0.019;
  static double get padding10 => screenWidth * 0.023;
  static double get padding12 => screenWidth * 0.029;
  static double get padding14 => screenWidth * 0.033;

  static double get padding16 => screenWidth * 0.038;
  static double get padding20 => screenWidth * 0.048;
  static double get padding24 => screenWidth * 0.058;
  static double get padding26 => screenWidth * 0.069;
  static double get padding28 => screenWidth * 0.074; //28
  static double get padding32 => screenWidth * 0.077;
  static double get padding35 => screenWidth * 0.093; //35
  static double get padding38 => screenWidth * 0.101; //38
  static double get padding34 => screenWidth * 0.091; //34
  static double get padding40 => screenWidth * 0.096;
  static double get padding44 => screenWidth * 0.117; //44
  static double get padding46 => screenWidth * 0.122; //46
  static double get padding54 => screenWidth * 0.130;
  static double get padding64 => screenWidth * 0.154; //56
  static double get padding70 => screenWidth * 0.186; //70
  static double get padding80 => screenWidth * 0.193; //56
  static double get padding90 => screenWidth * 0.245;

  // MARGINS
  static double get pageHorizontalMargins => screenWidth * 0.038; //

  //BORDER RADIUS

  static double get roundness8 => screenWidth * 0.021; //8
  static double get roundness5 => screenWidth * 0.013; //5
  static double get roundness12 => screenWidth * 0.028; //12
  static double get roundness16 => screenWidth * 0.038; //12
  static double get roundness24 => screenWidth * 0.058; //24
  static double get roundness32 => screenWidth * 0.077; //32
  static double get roundness40 => screenWidth * 0.096; //40
  static double get roundness56 => screenWidth * 0.135; //56
  static double get roundness112 => screenWidth * 0.270; //56

  //SLIVER APP BAR
  static double get sliverAppExpandableSize => screenWidth * 0.6;
  static double get sliverAppBarPaddingSmall => screenWidth * 0.05;
  static double get sliverAppBarPaddingLarge => screenWidth * 0.128;
  static double get boxWidthLarge => screenWidth * 0.371;
  static double get profileDPSize => screenWidth * 0.05;
  static double get boxDividerMargins => screenWidth * 0.016;
  static double get bannerHeight => screenWidth * 0.5;

  //Navbar
  static double get navBarWidth =>
      SizeConfig.screenWidth - (SizeConfig.pageHorizontalMargins * 2);
  static double get navBarAspectRatio => 4.16;
  static double get navBarHeight =>
      kBottomNavigationBarHeight +
      math.max(SizeConfig.viewInsets.bottom / 2, SizeConfig.padding8);

  //Avatar
  static double get avatarRadius => screenWidth * 0.048;
  static double get roundedButtonRadius => screenWidth * 0.048;
  static double get tileAvatarRadius => screenWidth * 0.057;
  static double get notificationAvatarRadius => screenWidth * 0.06;

  //DIVIDERS HEIGHTS
  static double get dividerHeight => screenWidth * 0.0006;

  //BORDER SIZES
  static double get border0 => screenWidth * 0.0014; // 0.5
  static double get border1 => screenWidth * 0.0024; // 1
  static double get border2 => screenWidth * 0.0036; // 1.5
  static double get border3 => screenWidth * 0.0048; // 2
  static double get border4 => screenWidth * 0.0069; // 2.5

  // Button Border Radius
  static double get buttonBorderRadius => screenWidth * 0.0139; // 5

}
