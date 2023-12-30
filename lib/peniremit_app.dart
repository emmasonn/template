import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peniremit/navigation/app_router.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_themes.dart';

class PeniremitApp extends StatefulWidget {
  const PeniremitApp({super.key});

  @override
  State<PeniremitApp> createState() => _PeniremitAppState();
}

class _PeniremitAppState extends State<PeniremitApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        title: AppStrings.appNameTxt,
        debugShowCheckedModeBanner: false,
        locale: const Locale('en'),
        theme: AppTheme.fromType().toThemeData(),
        darkTheme: AppTheme.fromType(isDark: true).toThemeData(),
        themeMode: ThemeMode.dark,
        routerConfig: AppRouter.goRouter,
      ),
    );
  }
}
