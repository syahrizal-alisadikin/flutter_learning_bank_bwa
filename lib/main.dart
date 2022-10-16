import 'package:bank_flutter/ui/pages/home_page.dart';
import 'package:bank_flutter/ui/pages/onboarding_page.dart';
import 'package:bank_flutter/ui/pages/pin_page.dart';
import 'package:bank_flutter/ui/pages/profile_edit_page.dart';
import 'package:bank_flutter/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_flutter/ui/pages/profile_edit_success_page.dart';
import 'package:bank_flutter/ui/pages/profile_page.dart';
import 'package:bank_flutter/ui/pages/sign_up_set_ktp.dart';
import 'package:bank_flutter/ui/pages/sign_up_set_profile.dart';
import 'package:bank_flutter/ui/pages/sign_in_page.dart';
import 'package:bank_flutter/ui/pages/sign_up_page.dart';
import 'package:bank_flutter/ui/pages/splash_page.dart';
import 'package:bank_flutter/ui/pages/topup_amount_page.dart';
import 'package:bank_flutter/ui/pages/topup_page.dart';
import 'package:bank_flutter/ui/pages/topup_success_page.dart';
import 'package:bank_flutter/ui/pages/transafer_page.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

import 'ui/pages/sign_up_success.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            )),
      ),
      // theme app bar
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
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccess(),
        '/topup': (context) => const TopupPage(),
        '/topup-amount': (context) => const TopupAmountPage(),
        '/topup-success': (context) => const TopupSuccessPage(),
        '/transfer': (context) => const TransferPage(),
      },
    );
  }
}
