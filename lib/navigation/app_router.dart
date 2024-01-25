import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/main.dart';
import 'package:peniremit/navigation/app_routes.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/navigation_error_screen.dart';
import 'package:peniremit/resources/app_strings.dart';

final GlobalKey<NavigatorState> rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigator = GlobalKey(debugLabel: 'shell');

class AppRouter {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppScreenPaths.splashPath,
    redirect: (context, state) {
      return null;
    },
    navigatorKey: rootNavigator,
    refreshListenable: themeManager,
    errorPageBuilder: (context, state) => NavigationErrorScreen.page(
      key: state.pageKey,
      errorMsg: state.error?.message,
    ),
    routes: <RouteBase>[
      AppRoutes.splashScreen,
      AppRoutes.onboardScreen,
      AppRoutes.countriesScreen,
      AppRoutes.mainScreen,
      AppRoutes.registerScreen,
      AppRoutes.loginScreen,
      AppRoutes.verifyAccountScreen,
      AppRoutes.verifyOtpScreen,
      AppRoutes.createPinScreen,
      AppRoutes.recoverPasswordScreen,
      AppRoutes.updatePasswordScreen,
      AppRoutes.updatePinScreen,
      AppRoutes.allSubscriptionsScreen,
      AppRoutes.subscriptionDetailScreen,
      AppRoutes.fundWalletScreen,
      AppRoutes.addSubscriptionScreen,
      AppRoutes.moreServicesScreen,
      AppRoutes.upcomingSubscriptionScreen,
      AppRoutes.subscriptionPlansScreen,
      AppRoutes.createCardScreen,
      AppRoutes.transactionHistoryScreen,
      AppRoutes.confirmTransactionScreen,
      AppRoutes.transferFundScreen,
      AppRoutes.withdrawFundScreen,
      AppRoutes.transactionCompletedScreen,
      AppRoutes.buyAirtimeScreen,
      AppRoutes.buyDataScreen,
      AppRoutes.buyElectricityScreen,
      AppRoutes.buyTvScreen,
      AppRoutes.recoverPasswordOtpScreen,
      AppRoutes.electricityBeneficiaryScreen,
      AppRoutes.transactionDetailScreen,
      AppRoutes.contactsScreen,
    ],
  );
}
