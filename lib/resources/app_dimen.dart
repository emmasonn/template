class PageBreaks {
  static double get largePhone => 550;
  static double get tabletPortrait => 800;
  static double get tabletLandscape => 1024;
  static double get desktop => 1440;
}

class BreakPoints {
  static const double start = 0;
  static const double mobile = 450;
  static const double tablet = 800;
  static const double desktop = 1920;
}

class Sizes {
  static double get sm => 15;
  static double get md => 20;
  static double get lg => 25;
  static double get vlg => 30;
  static double get vvlg => 40;
  /////////////////////////////////
  static double get sideBarSm => 150;
  static double get sideBarMd => 200;
  static double get sideBarLg => 290;

  /////////////////////////////////
  static double get bottonNavHeight => 70;
  static double get bottomNavIconSize => 20;
  static double get bottomNavIconSizeSm => 18;
  static double get toolBarHeigth => 70;
  static double get iconSizeMd => 24;
  static double get btnWidthMd => 350;
  static double get btnHeightMd => 50;

  static double get flexibleTopPadding => 80.0;

  static double get flexibleHeight => 250;
}

class FontSizes {
  static double s8 = 8;

  static double s10 = 10;

  static double s11 = 11;

  static double s12 = 12;

  static double s13 = 13;

  static double s14 = 14;

  static double s15 = 15;

  static double s17 = 17;

  static double s16 = 16;

  static double s18 = 18;

  static double s20 = 20;

  static double s24 = 24;

  static double s26 = 26;

  static double s28 = 28;

  static double s30 = 30;

  static double s36 = 36;

  static double s40 = 40;

  static double s48 = 48;
}

class DurationsConfig {
  static const Duration fastest = Duration(milliseconds: 150);
  static const Duration fast = Duration(milliseconds: 250);
  static const Duration medium = Duration(milliseconds: 350);
  static const Duration slow = Duration(milliseconds: 1000);
  static const Duration pageTransition = Duration(microseconds: 200);
  static const Duration verySlow = Duration(microseconds: 1200);
}

class Corners {
  static const double vsm = 3.0;
  static const double sm = 4.0;
  static const double md = 8.0;
  static const double mmd = 10.0;
  static const double hMd = 20.0;
  static const double lg = 30.0;
  static const double vLg = 40.0;
  static const double vvLg = 60.0;
}

class Insets {
  static const double _scale = 1;

  static double xxs = 4 * _scale;

  static double xs = 8 * _scale;

  static double sm = 16 * _scale;

  static double md = 24 * _scale;

  static double lg = 32 * _scale;

  static double xl = 48 * _scale;

  static double xxl = 56 * _scale;

  static double offset = 80 * _scale;
}
