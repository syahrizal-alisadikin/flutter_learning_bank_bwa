import 'package:bank_flutter/services/login_controller.dart';
import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/forms.dart';
import 'package:bank_flutter/ui/widgets/header.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final cLogin = Get.put(LoginController());
  final cEmail = TextEditingController();
  final cPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          // Header
          const HeaderPage(),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Text(
            "Sign in & \nGrow your finance",
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input Email
                CustomeFormField(
                  title: "Email",
                  controller: cEmail,
                  hintText: "Masukkan Email",
                ),
                const SizedBox(
                  height: 16,
                ),
                Obx(
                  () {
                    return CustomeFormField(
                      title: "Password",
                      controller: cPass,
                      hintText: "Masukkan Password",
                      obscureText: cLogin.toggle.value,
                      eye: true,
                      iconData: cLogin.toggle.value,
                      onPressed: () => cLogin.toggle.toggle(),
                    );
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                CustomeFilledButton(
                  title: "Sign In",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home',
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          CustomTextButton(
              title: "Register New Account",
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/register',
                  (route) => false,
                );
              }),
        ],
      ),
    );
  }
}
