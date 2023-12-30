import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/core/utils/country.dart';
import 'package:peniremit/features/account/app/screens/analytic_screen.dart';
import 'package:peniremit/features/account/app/screens/setting_screen.dart';
import 'package:peniremit/features/auth/app/screens/country_screen.dart';
import 'package:peniremit/features/auth/app/screens/create_pin_screen.dart';
import 'package:peniremit/features/auth/app/screens/login_screen.dart';
import 'package:peniremit/features/auth/app/screens/onboarding_screen.dart';
import 'package:peniremit/features/auth/app/screens/recover_password_screen.dart';
import 'package:peniremit/features/auth/app/screens/register_screen.dart';
import 'package:peniremit/features/auth/app/screens/splash_screen.dart';
import 'package:peniremit/features/auth/app/screens/update_password_screen.dart';
import 'package:peniremit/features/auth/app/screens/update_pin_screen.dart';
import 'package:peniremit/features/auth/app/screens/verify_account_screen.dart';
import 'package:peniremit/features/auth/app/screens/verify_otp_screen.dart';
import 'package:peniremit/features/home/app/screens/home_screen.dart';
import 'package:peniremit/features/home/app/screens/main_screen.dart';
import 'package:peniremit/features/wallet/app/screens/wallet_screen.dart';
import 'package:peniremit/navigation/app_router.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/nav_utils.dart';

class AppRoutes {
  static final splashScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.splashPath,
    pageBuilder: (BuildContext context, state) {
      return SplashScreen.page(key: state.pageKey);
    },
  );

  static final onboardScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.onboardPath,
    pageBuilder: (BuildContext context, state) {
      return OnboardingScreen.page(key: state.pageKey);
    },
  );

  static final loginScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.loginPath,
    pageBuilder: (BuildContext context, state) {
      return LoginScreen.page(key: state.pageKey);
    },
  );

  static final registerScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.registerPath,
    pageBuilder: (BuildContext context, state) {
      return RegisterScreen.page(key: state.pageKey);
    },
  );

  static final countriesScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.countryPath,
    pageBuilder: (BuildContext context, state) {
      return CountryScreen.page(
        key: state.pageKey,
        callBack: state.extra as NavCallBack<Country>,
      );
    },
  );

  static final createPinScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.createPinPath,
    pageBuilder: (BuildContext context, state) {
      return CreatePinScreen.page(key: state.pageKey);
    },
  );

  static final recoverPasswordScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.recoverPasswordPath,
    pageBuilder: (BuildContext context, state) {
      return RecoverPasswordScreen.page(key: state.pageKey);
    },
  );

  static final updatePasswordScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.updatePasswordPath,
    pageBuilder: (BuildContext context, state) {
      return UpdatePasswordScreen.page(key: state.pageKey);
    },
  );

  static final updatePinScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.updatePinPath,
    pageBuilder: (BuildContext context, state) {
      return UpdatePinScreen.page(key: state.pageKey);
    },
  );

  static final verifyAccountScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.verifyAccountPath,
    pageBuilder: (BuildContext context, state) {
      return VerifyAccountScreen.page(
        key: state.pageKey,
        navCallBack: state.extra as NavCallBack<String>,
      );
    },
  );

  static final verifyOtpScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.verifyOtpPath,
    pageBuilder: (BuildContext context, state) {
      return VerifyOtpScreen.page(key: state.pageKey);
    },
  );

  static final mainScreen = ShellRoute(
    navigatorKey: shellNavigator,
    pageBuilder: (context, state, child) {
      return MainScreen.page(
        key: state.pageKey,
        child: child,
      );
    },
    routes: [
      homeScreen,
      walletScreen,
      analyticScreen,
      settingScreen,
    ],
  );

  static final homeScreen = GoRoute(
    path: AppScreenPaths.homePath,
    pageBuilder: (context, state) {
      return HomeScreen.page(key: state.pageKey);
    },
  );

  static final walletScreen = GoRoute(
    path: AppScreenPaths.walletPath,
    pageBuilder: (context, state) {
      return WalletScreen.page(key: state.pageKey);
    },
  );

  static final analyticScreen = GoRoute(
    path: AppScreenPaths.analyticsPath,
    pageBuilder: (context, state) {
      return AnalyticScreen.page(key: state.pageKey);
    },
  );

  static final settingScreen = GoRoute(
    path: AppScreenPaths.settingPath,
    pageBuilder: (context, state) {
      return SettingScreen.page(key: state.pageKey);
    },
  );
}
