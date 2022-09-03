import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/forms.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/login_controller.dart';
import '../widgets/header.dart';

class SignUpSetProfile extends StatefulWidget {
  const SignUpSetProfile({Key? key}) : super(key: key);

  @override
  State<SignUpSetProfile> createState() => _SignUpSetProfileState();
}

class _SignUpSetProfileState extends State<SignUpSetProfile> {
  final cPin = TextEditingController();
  final cLogin = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                // Container(
                //   width: 100,
                //   height: 100,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightBackgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Syahrizal Ali Sadikin",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Obx(() {
                  return CustomeFormField(
                    title: "Set PIN(6 digit number)",
                    controller: cPin,
                    obscureText: cLogin.toggle.value,
                    eye: true,
                    iconData: cLogin.toggle.value,
                    onPressed: () => cLogin.toggle.toggle(),
                    hintText: "Masukkan PIN Anda",
                  );
                }),
                const SizedBox(
                  height: 30,
                ),
                CustomeFilledButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/register-set-ktp',
                        (route) => false,
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
