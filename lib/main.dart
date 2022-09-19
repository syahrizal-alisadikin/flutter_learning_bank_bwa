import 'package:bank_flutter/ui/pages/home_page.dart';
import 'package:bank_flutter/ui/pages/onboarding_page.dart';
import 'package:bank_flutter/ui/pages/profile_page.dart';
import 'package:bank_flutter/ui/pages/sign_up_set_ktp.dart';
import 'package:bank_flutter/ui/pages/sign_up_set_profile.dart';
import 'package:bank_flutter/ui/pages/sign_in_page.dart';
import 'package:bank_flutter/ui/pages/sign_up_page.dart';
import 'package:bank_flutter/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/sign_up_success.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/login': (context) => const SignInPage(),
        '/register': (context) => const SignUpPage(),
        '/register-set-profile': (context) => const SignUpSetProfile(),
        '/register-set-ktp': (context) => const SignUpSetKtp(),
        '/register-success': (context) => const SignUpSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
