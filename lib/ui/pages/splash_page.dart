import 'dart:async';

import 'package:bank_flutter/ui/pages/onboarding_page.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/onboarding',
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
          child: Container(
        width: Get.width * 0.4,
        height: Get.height * 0.24,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/img_logo_dark.png'),
            fit: BoxFit.contain,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      )),
    );
  }
}
