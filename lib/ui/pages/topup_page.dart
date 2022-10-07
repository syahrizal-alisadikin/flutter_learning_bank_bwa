import 'package:bank_flutter/ui/widgets/bank_item.dart';
import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatefulWidget {
  const TopupPage({super.key});

  @override
  State<TopupPage> createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {
  bool isTopup = false;
  onChange() {
    setState(() {
      isTopup = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topup'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 20),
          Text(
            "Wallet",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "0890 1234 5678",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Syahrizal As",
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 25),
          Text(
            "Select Bank",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 20),
          const BankItem(
            isSelected: true,
            imageUrl: 'assets/img_bank_bca.png',
            name: 'BANK BCA',
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_bni.png',
            name: 'BANK BNI',
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_ocbc.png',
            name: 'BANK OCBC',
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_mandiri.png',
            name: 'BANK MANDIRI',
          ),
          const SizedBox(height: 12),
          CustomeFilledButton(
              title: "Continue",
              onPressed: () {
                onChange();
              }),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
