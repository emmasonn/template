import 'package:flutter/material.dart';
import 'package:peniremit/core/cache_manager/cache_manager.dart';
import 'package:peniremit/resources/app_strings.dart';


class ThemeManager extends ChangeNotifier {
  ThemeManager() {
    initializeSetting();
  }

  bool isDark = false;
  final CacheManager cacheManager = CacheManager.instance;

  Future<void> initializeSetting() async {
    final themeStatus =
        await cacheManager.getPref(AppStrings.themePrefKey) as bool?;
    if (themeStatus != null) {
      isDark = themeStatus;
    }
    notifyListeners();
  }

  Future<void> switchDarkTheme() async {
    isDark = !isDark;
    await cacheManager.storePref(AppStrings.themePrefKey, isDark);
    notifyListeners();
  }
}
