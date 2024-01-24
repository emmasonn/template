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
import 'package:peniremit/features/subscriptions/app/pages/add_subscription_screen.dart';
import 'package:peniremit/features/home/app/screens/buy_airtime_screen.dart';
import 'package:peniremit/features/home/app/screens/buy_cabletv_screen.dart';
import 'package:peniremit/features/home/app/screens/buy_data_screen.dart';
import 'package:peniremit/features/home/app/screens/buy_electricity_screen.dart';
import 'package:peniremit/features/home/app/screens/fund_wallet_screen.dart';
import 'package:peniremit/features/home/app/screens/home_screen.dart';
import 'package:peniremit/features/home/app/screens/main_screen.dart';
import 'package:peniremit/features/home/app/screens/more_services_screen.dart';
import 'package:peniremit/features/subscriptions/app/pages/subscription_detail_screen.dart';
import 'package:peniremit/features/subscriptions/app/pages/all_subscriptions_screen.dart';
import 'package:peniremit/features/subscriptions/app/pages/subscriptions_screen.dart';
import 'package:peniremit/features/subscriptions/app/pages/upcoming_subscriptions_screen.dart';
import 'package:peniremit/features/subscriptions/app/widgets/subscription_filter_widget.dart';
import 'package:peniremit/features/wallet/app/screens/confirm_transaction_screen.dart';
import 'package:peniremit/features/wallet/app/screens/create_card_screen.dart';
import 'package:peniremit/features/wallet/app/screens/transaction_completed_screen.dart';
import 'package:peniremit/features/wallet/app/screens/transaction_history_screen.dart';
import 'package:peniremit/features/wallet/app/screens/transfer_funds_screen.dart';
import 'package:peniremit/features/wallet/app/screens/wallet_screen.dart';
import 'package:peniremit/features/wallet/app/screens/withdraw_transaction_screen.dart';
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
        callBack: state.extra as NavParamWrapper<Country>,
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
        navCallBack: state.extra as NavParamWrapper<String>,
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

  static final allSubscriptionsScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.allSubscriptionsPath,
    pageBuilder: (BuildContext context, state) {
      return AllSubscriptionScreen.page(key: state.pageKey);
    },
  );

  static final addSubscriptionScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.addSubscriptionPath,
    pageBuilder: (BuildContext context, state) {
      return AddSubscriptionScreen.page(key: state.pageKey);
    },
  );

  static final upcomingSubscriptionScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.upcomingSubsriptionPath,
    pageBuilder: (BuildContext context, state) {
      return UpcomingSubscriptionsScreen.page(key: state.pageKey);
    },
  );

  static final moreServicesScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.moreServicesPath,
    pageBuilder: (BuildContext context, state) {
      return MoreServicesScreen.page(key: state.pageKey);
    },
  );

  static final subscriptionPlansScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.subscriptionPlansPath,
    pageBuilder: (BuildContext context, state) {
      return AllSubscriptionScreen.page(key: state.pageKey);
    },
  );

  static final transactionHistoryScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.transactionHistoryPath,
    pageBuilder: (BuildContext context, state) {
      return TransactionHistoryScreen.page(key: state.pageKey);
    },
  );

  static final createCardScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.createCardPath,
    pageBuilder: (BuildContext context, state) {
      return CreateCardScreen.page(key: state.pageKey);
    },
  );

  static final confirmTransactionScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.confirmTransactionPath,
    pageBuilder: (BuildContext context, state) {
      return ConfirmTransactionScreen.page(key: state.pageKey);
    },
  );

  static final transactionCompletedScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.transactionCompletedPath,
    pageBuilder: (BuildContext context, state) {
      return TransactionCompletedScreen.page(key: state.pageKey);
    },
  );

  static final transferFundScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.transferFundPath,
    pageBuilder: (BuildContext context, state) {
      return TransferFundScreen.page(key: state.pageKey);
    },
  );

  static final withdrawFundScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.withdrawFundPath,
    pageBuilder: (BuildContext context, state) {
      return WithdrawFundScreen.page(key: state.pageKey);
    },
  );

  static final fundWalletScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.fundWalletPath,
    pageBuilder: (BuildContext context, state) {
      return FundWalletScreen.page(key: state.pageKey);
    },
  );

  static final subscriptionDetailScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.subscriptionDetailPath,
    pageBuilder: (BuildContext context, state) {
      return SubscriptionDetailScreen.page(
          key: state.pageKey,
          params: state.extra as NavParamWrapper<Subscription>);
    },
  );

  static final recoverPasswordOtpScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.recoverPasswordOtpPath,
    pageBuilder: (BuildContext context, state) {
      return VerifyOtpScreen.page(
        key: state.pageKey,
      );
    },
  );

  //** bill payment routes

  static final buyAirtimeScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.buyAirtimePath,
    pageBuilder: (BuildContext context, state) {
      return BuyAirtimeScreen.page(
        key: state.pageKey,
      );
    },
  );

  static final buyDataScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.buyDataPath,
    pageBuilder: (BuildContext context, state) {
      return BuyDataScreen.page(
        key: state.pageKey,
      );
    },
  );

  static final buyElectricityScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.buyElectricityPath,
    pageBuilder: (BuildContext context, state) {
      return BuyElectricityScreen.page(
        key: state.pageKey,
      );
    },
  );

  static final buyTvScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.buyTvPath,
    pageBuilder: (BuildContext context, state) {
      return BuyCableTvScreen.page(
        key: state.pageKey,
      );
    },
  );

  static final analyticScreen = GoRoute(
    parentNavigatorKey: rootNavigator,
    path: AppScreenPaths.analyticsPath,
    pageBuilder: (context, state) {
      return AnalyticScreen.page(key: state.pageKey);
    },
  );

//*/

  //** Dashboard screen routes
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
      subscriptionsScreen,
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

  static final subscriptionsScreen = GoRoute(
    path: AppScreenPaths.subscriptionsPath,
    pageBuilder: (BuildContext context, state) {
      return SubscriptionsScreen.page(key: state.pageKey);
    },
  );

  static final settingScreen = GoRoute(
    path: AppScreenPaths.settingPath,
    pageBuilder: (context, state) {
      return SettingScreen.page(key: state.pageKey);
    },
  );
  // */
}
