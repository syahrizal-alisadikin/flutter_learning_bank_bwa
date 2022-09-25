import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/forms.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header.dart';

class SignUpSetKtp extends StatefulWidget {
  const SignUpSetKtp({Key? key}) : super(key: key);

  @override
  State<SignUpSetKtp> createState() => _SignUpSetKtpState();
}

class _SignUpSetKtpState extends State<SignUpSetKtp> {
  final cPin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const HeaderPage(),
          SizedBox(
            height: Get.height * 0.1,
          ),
          Text(
            "Verification Your Identity \nwith KTP",
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
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                // Container(
                //   width: 100,
                //   height: 100,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage('assets/img_profile.png'),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 14,
                ),
                Text(
                  "Upload Your KTP / SIM",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                CustomeFilledButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/register-success',
                        (route) => false,
                      );
                    }),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomTextButton(
            title: "Skip Now",
            onPressed: () {
              Navigator.pushNamed(context, '/register-success');
            },
          ),
        ],
      ),
    );
  }
}
