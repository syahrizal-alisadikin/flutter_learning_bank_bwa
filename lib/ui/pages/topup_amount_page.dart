import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({Key? key}) : super(key: key);

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          symbol: '',
          decimalDigits: 0,
        ).format(
          int.parse(
            text == "" ? "0" : text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmount(String number) {
    setState(() {
      if (amountController.text == '0') {
        amountController.text = "";
      }
      if (amountController.text.length <= 9) {
        amountController.text += number;
      }
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text.isEmpty) {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(height: 60),
          Center(
            child: Text(
              'Total Amount',
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            child: SizedBox(
              width: 250,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                enabled: false,
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp ',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Align(
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                CustomeInputButton(
                    title: '1',
                    onTap: () {
                      addAmount('1');
                    }),
                CustomeInputButton(
                    title: '2',
                    onTap: () {
                      addAmount('2');
                    }),
                CustomeInputButton(
                    title: '3',
                    onTap: () {
                      addAmount('3');
                    }),
                CustomeInputButton(
                    title: '4',
                    onTap: () {
                      addAmount('4');
                    }),
                CustomeInputButton(
                    title: '5',
                    onTap: () {
                      addAmount('5');
                    }),
                CustomeInputButton(
                    title: '6',
                    onTap: () {
                      addAmount('6');
                    }),
                CustomeInputButton(
                    title: '7',
                    onTap: () {
                      addAmount('7');
                    }),
                CustomeInputButton(
                    title: '8',
                    onTap: () {
                      addAmount('8');
                    }),
                CustomeInputButton(
                    title: '9',
                    onTap: () {
                      addAmount('9');
                    }),
                const SizedBox(
                  width: 60,
                  height: 60,
                ),
                CustomeInputButton(
                    title: '0',
                    onTap: () {
                      addAmount('0');
                    }),
                GestureDetector(
                  onTap: () {
                    deleteAmount();
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
          ),
          const SizedBox(
            height: 50,
          ),
          CustomeFilledButton(
            title: "Checkout Now",
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                await launchUrl(Uri.parse("https://demo.midtrans.com/"));
                Navigator.pushNamedAndRemoveUntil(
                    context, '/topup-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextButton(
            title: "Terms and Conditions",
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
