import 'package:flutter/material.dart';
import 'package:peniremit/core/cache_manager/cache_manager.dart';
import 'package:peniremit/resources/app_strings.dart';

class AppManager extends ChangeNotifier {
  AppManager() {
    initializeBoardingStatus();
  }

  int currentPageIndex = 2;
  bool hasShowedOnboarding = false;
  final CacheManager cacheManager = CacheManager.instance;

  //get page index
  Future<int> getCurrentSceen() async {
    return currentPageIndex;
  }

  //get onboardingStatus
  Future<void> initializeBoardingStatus() async {
    return await cacheManager.getPref(AppStrings.onboardingPrefKey);
  }

  //update has showed onboarding
  Future<void> updateOnboardingStatus(bool condition) async {
    hasShowedOnboarding = condition;
    // notifyListeners();
  }

  //switch page
  Future<void> updatePageIndex(int index) async {
    currentPageIndex = index;
    notifyListeners();
  }
}
