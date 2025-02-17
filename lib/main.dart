import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:soraimo/core/constants/theme_ids.dart';
import 'package:soraimo/core/routes/route.dart';
import 'package:soraimo/core/services/hive_service.dart';
import 'package:soraimo/core/services/notification_service.dart';
import 'package:soraimo/core/themes/custom_theme.dart';
import 'package:theme_provider/theme_provider.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load();
  FlutterNativeSplash.remove();
  // await SystemChrome.setPreferredOrientations(
  //   [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  // );
  HiveService().init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    NotificationService().init();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      loadThemeOnInit: true,
      saveThemesOnChange: true,
      themes: [
        AppTheme(
          id: ThemeIds.customDarkTheme,
          data: CustomTheme.darkTheme,
          description: "Custom Dark Theme",
        ),
        AppTheme(
          id: ThemeIds.customLightTheme,
          data: CustomTheme.lightTheme,
          description: "Custom Light Theme",
        ),
      ],
      child: ThemeConsumer(
        child: Builder(builder: (themeContext) {
          return MaterialApp(
            title: 'Soraimo',
            theme: ThemeProvider.themeOf(themeContext).data,
            onGenerateRoute: RouteGenerator.generateRoutes,
            initialRoute: '/auth',
            debugShowCheckedModeBanner: dotenv.getBool(
              'DEBUG',
              fallback: true,
            ),
          );
        }),
      ),
    );
  }
}
