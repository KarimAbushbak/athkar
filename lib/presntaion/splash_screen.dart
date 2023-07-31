
import 'package:athkar/core/resources/manager_strings.dart';
import 'package:flutter/material.dart';

import '../core/resources/manager_colors.dart';
import '../core/resources/manager_font_sizes.dart';
import '../core/resources/manager_font_weight.dart';
import '../core/routes.dart';
import '../core/widgets/base_text.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print('Hello I am init state');
    Future.delayed(Duration(seconds: 5), () {
      print('Hello I am in Future');
      // Navigator.pushNamed(context, Routes.bioScreen);
      Navigator.pushReplacementNamed(context, Routes.mainScreen);
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => const AboutScreen(),
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ManagerColors.secondaryColor,
              ManagerColors.brown200,
              ManagerColors.white70,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
        ),
        child: baseText(),
      ),

    );
  }

  @override
  void dispose() {
    print('Hello i am in dispose');
    super.dispose();
  }
}
