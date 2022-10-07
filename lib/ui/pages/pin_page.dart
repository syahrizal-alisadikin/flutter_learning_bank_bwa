import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');
  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text += number;
      });
    }
    if (pinController.text == "123456") {
      Navigator.pop(context, true);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

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
                  controller: pinController,
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  enabled: false,
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
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
                  CustomeInputButton(
                      title: '1',
                      onTap: () {
                        addPin('1');
                      }),
                  CustomeInputButton(
                      title: '2',
                      onTap: () {
                        addPin('2');
                      }),
                  CustomeInputButton(
                      title: '3',
                      onTap: () {
                        addPin('3');
                      }),
                  CustomeInputButton(
                      title: '4',
                      onTap: () {
                        addPin('4');
                      }),
                  CustomeInputButton(
                      title: '5',
                      onTap: () {
                        addPin('5');
                      }),
                  CustomeInputButton(
                      title: '6',
                      onTap: () {
                        addPin('6');
                      }),
                  CustomeInputButton(
                      title: '7',
                      onTap: () {
                        addPin('7');
                      }),
                  CustomeInputButton(
                      title: '8',
                      onTap: () {
                        addPin('8');
                      }),
                  CustomeInputButton(
                      title: '9',
                      onTap: () {
                        addPin('9');
                      }),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomeInputButton(
                      title: '0',
                      onTap: () {
                        addPin('0');
                      }),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
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
