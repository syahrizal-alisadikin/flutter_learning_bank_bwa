import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/profile_menu_item.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: greenColor,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'John Doe',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_edit_profile.png",
                  title: "Edit Profile",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/profile-edit');
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_pin.png",
                  title: "My Pin",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_wallet.png",
                  title: "Wallet Settings",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_reward.png",
                  title: "My Rewards",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_help.png",
                  title: "Help Center",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_logout.png",
                  title: "Logout",
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          CustomTextButton(title: "Report a Problem", onPressed: () {}),
        ],
      ),
    );
  }
}
