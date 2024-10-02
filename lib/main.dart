import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/themes/light_theme.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/views/MainView.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/view/MainViewMobileLayout.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    FlutterNativeSplash.remove();

    super.initState();
  }

  final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,

      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: themeNotifier,
          builder: (context, ThemeMode currentTheme, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme, // Light theme
              darkTheme: darkTheme, // Dark theme
              themeMode: currentTheme, // Current theme mode from ValueNotifier
              home: child,
            );
          },
        );
      },
      child: ScreenTypeLayout(
        mobile: MainView(themeNotifier: themeNotifier),
        tablet: MainView(themeNotifier: themeNotifier),
        desktop: MainView(themeNotifier: themeNotifier),
      ),
    );
  }
}
