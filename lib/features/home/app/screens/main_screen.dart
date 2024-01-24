import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peniremit/features/home/app/screens/main_scaffold_screen.dart';
import 'package:peniremit/features/home/app/widgets/main_bottom_nav.dart';
import 'package:peniremit/navigation/app_screen_paths.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/providers/managers/app_manager.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  const MainScreen({
    super.key,
    required this.child,
  });

  static Page page({LocalKey? key, required Widget child}) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: MainScreen(child: child),
    );
  }

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final pageIndex = context.watch<AppManager>().currentPageIndex;
    return Scaffold(
      body: MainScaffoldView(
        child: widget.child,
      ),
      bottomNavigationBar: MainBottomNav(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          onTapClicked(
            context,
            pageIndex: index,
          );
        },
      ),
    );
  }
}

void onTapClicked(BuildContext context, {required int pageIndex}) {
  //navigate screen.
  context.read<AppManager>().updatePageIndex(pageIndex);

  switch (pageIndex) {
    case AppStrings.homeIndexTxt:
      {
        context.go(AppScreenPaths.homePath);
      }
    case AppStrings.walletIndexTxt:
      {
        context.go(AppScreenPaths.walletPath);
      }

    case AppStrings.subscriptionIndexTxt:
      {
        context.go(AppScreenPaths.subscriptionsPath);
      }

    case AppStrings.settingsIndexTxt:
      {
        context.go(AppScreenPaths.settingPath);
      }
  }
}
