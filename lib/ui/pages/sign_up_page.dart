import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/login_controller.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';
import '../widgets/header.dart';
import '../widgets/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final cLogin = Get.put(LoginController());
  final cEmail = TextEditingController();
  final cPass = TextEditingController();
  final cName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          // Header
          const HeaderPage(),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Text(
            "Join Us to Unlock & \nYour Growth finance",
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
                // INput Name
                CustomeFormField(
                  title: "Name",
                  controller: cName,
                  hintText: "Masukkan Full Name",
                ),
                const SizedBox(
                  height: 16,
                ),
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
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/register-set-profile',
                        (route) => false,
                      );
                    }),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          CustomTextButton(
              title: "Sign In",
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                );
              }),
        ],
      ),
    );
  }
}
