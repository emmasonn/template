import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:peniremit/peniremit_app.dart';
import 'package:peniremit/providers/managers/app_manager.dart';
import 'package:peniremit/providers/managers/theme_manager.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:provider/provider.dart';

late ThemeManager themeManager;
late AppManager appManager;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //initializeApi choice Live | Staging
  // ApiBase.initApi(Environment.live);

  //Initialize Hive Database
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  //initialize service locator
  // await initSl();

  //initialize theme
  // sl<ThemeManager>().initializeSetting();
  themeManager = ThemeManager();
  appManager = AppManager();

  //set the device orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  //modify the system overlay
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.bgBlack,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: AppColors.bgBlack,
    ),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => appManager,
        ),
        ChangeNotifierProvider.value(
          value: themeManager,
        ),
      ],
      child: const PeniremitApp(),
    ),
  );
}
