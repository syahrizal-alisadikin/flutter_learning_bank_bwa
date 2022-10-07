import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/login_controller.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';
import '../widgets/theme.dart';

class ProfileEditPinPage extends StatefulWidget {
  const ProfileEditPinPage({Key? key}) : super(key: key);

  @override
  State<ProfileEditPinPage> createState() => _ProfileEditPinPageState();
}

class _ProfileEditPinPageState extends State<ProfileEditPinPage> {
  final cLogin = Get.put(LoginController());
  final cEmail = TextEditingController();
  final cPass = TextEditingController();
  final cName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Edit Pin',
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeFormField(
                        title: "Old Pin",
                        controller: cEmail,
                        hintText: "Masukkan Old Pin",
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Obx(
                        () {
                          return CustomeFormField(
                            title: "New Pin",
                            controller: cPass,
                            hintText: "Masukkan New Pin",
                            obscureText: cLogin.toggle.value,
                            eye: true,
                            iconData: cLogin.toggle.value,
                            onPressed: () => cLogin.toggle.toggle(),
                          );
                        },
                      ),
                      const SizedBox(height: 40),
                      CustomeFilledButton(
                          title: "Update Pin",
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/profile-edit-success',
                              (route) => false,
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
