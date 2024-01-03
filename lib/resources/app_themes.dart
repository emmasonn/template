import 'package:flutter/material.dart';
import 'package:peniremit/resources/app_colors.dart';

enum ThemeType { none }

class AppTheme {
  static ThemeType defaultTheme = ThemeType.none;

  final ThemeType type;
  final bool isDark;
  final Color accent1;
  final Color accent2;
  final Color grey;
  final Color greyLight;
  final Color greyStrong;
  final Color greyStronger;

  ///Theme adjusted text color will be black in light mode and white in dark mode
  late Color bgColor;
  late Color mainTextColor;
  late Color inverseTextColor;
  late Color surfaceColor;
  late Color inverseSurfaceColor;

  AppTheme({
    required this.type,
    required this.isDark,
    required this.accent1,
    required this.accent2,
    required this.grey,
    required this.greyLight,
    required this.greyStrong,
    required this.greyStronger,
  }) {
    bgColor = isDark ? AppColors.bgBlack : AppColors.bgWhite;
    mainTextColor = isDark ? Colors.white : Colors.black;
    inverseTextColor = isDark ? Colors.black : Colors.white;
    surfaceColor = isDark ? AppColors.surface700 : AppColors.surface200;
    inverseSurfaceColor = isDark ? AppColors.surface200 : AppColors.surface700;
  }

  //Creates an AppTheme from a provided type
  factory AppTheme.fromType(
      {ThemeType t = ThemeType.none, bool isDark = false}) {
    switch (t) {
      case ThemeType.none:
        return AppTheme(
          type: t,
          isDark: isDark,
          accent1: AppColors.accent,
          accent2: AppColors.accent,
          grey: AppColors.grey,
          greyLight: AppColors.greyLight,
          greyStrong: AppColors.greyStrong,
          greyStronger: AppColors.greyStronger,
        );

      default:
        return AppTheme(
          type: t,
          isDark: isDark,
          accent1: AppColors.accent,
          accent2: AppColors.accent,
          grey: AppColors.grey,
          greyLight: AppColors.greyLight,
          greyStrong: AppColors.greyStrong,
          greyStronger: AppColors.greyStronger,
        );
    }
  }

  //Converts AppTheme into a Material Theme data
  ThemeData toThemeData() {
    var t = ThemeData.from(
        textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
        colorScheme: ColorScheme(
          brightness: isDark ? Brightness.dark : Brightness.light,
          primary: AppColors.accent,
          onPrimary: AppColors.onAccent,
          secondary: accent1,
          onSecondary: AppColors.onAccent,
          error: AppColors.error,
          onError: AppColors.onAccent,
          background: bgColor,
          onBackground: inverseTextColor,
          surface: surfaceColor,
          onSurface: inverseSurfaceColor,
        ));

    t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      useMaterial3: true,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: accent1,
        selectionHandleColor: Colors.transparent,
        selectionColor: accent1,
      ),
      highlightColor: AppColors.accentLight,
    );

    return t;
  }
}
