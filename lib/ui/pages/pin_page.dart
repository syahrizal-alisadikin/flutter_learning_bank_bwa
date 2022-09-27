import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinPage extends StatelessWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My PIN',
                style:
                    whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomeInputButton(title: '1', onTap: () {}),
                  CustomeInputButton(title: '2', onTap: () {}),
                  CustomeInputButton(title: '3', onTap: () {}),
                  CustomeInputButton(title: '4', onTap: () {}),
                  CustomeInputButton(title: '5', onTap: () {}),
                  CustomeInputButton(title: '6', onTap: () {}),
                  CustomeInputButton(title: '7', onTap: () {}),
                  CustomeInputButton(title: '8', onTap: () {}),
                  CustomeInputButton(title: '9', onTap: () {}),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomeInputButton(title: '0', onTap: () {}),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_back, color: whiteColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
