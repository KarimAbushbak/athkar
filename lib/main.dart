import 'package:athkar/presntaion/about_screen.dart';
import 'package:athkar/presntaion/main_screen.dart';
import 'package:athkar/presntaion/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/resources/manager_font_sizes.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.mainScreen: (context) =>  mainScreen(),
        Routes.aboutScreen: (context) =>  AboutScreen(),
      },
    );

  }
}
