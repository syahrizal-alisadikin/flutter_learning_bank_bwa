import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.1,
      height: 50,
      margin: const EdgeInsets.only(top: 100),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img_logo_light.png'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
