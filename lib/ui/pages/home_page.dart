import 'package:bank_flutter/ui/widgets/home_latest_transaction.dart';
import 'package:bank_flutter/ui/widgets/home_service.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        bottomNavigationBar: BottomAppBar(
          color: whiteColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          elevation: 0,
          child: BottomNavigationBar(
            // rata tengah icon
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteColor,
            selectedItemColor: blueColor,
            unselectedItemColor: greyColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: blueTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
            unselectedLabelStyle: greyTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_statistic.png',
                  width: 20,
                ),
                label: 'Statistic',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: 'Reward',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: purpleColor,
          child: Image.asset(
            'assets/ic_plus_circle.png',
            width: 20,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            buildHeaderProfile(),
            buildWalletCard(),
            buildLevel(),
            buildHomeService(),
            buildLatestTransaction(),
          ],
        ));
  }

  Widget buildHeaderProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi",
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Text(
                "Izal",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_profile.png'),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 16,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Syahrizal As",
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: regular,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            "**** **** **** 1234",
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: medium,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            "Balance",
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
          ),
          Text(
            "Rp 5000.000",
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
              const Spacer(),
              Text(
                '55%',
                style:
                    greenTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'of Rp 5000.000',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: LinearProgressIndicator(
              value: 0.55,
              minHeight: 7,
              backgroundColor: lightBackgroundColor,
              valueColor: AlwaysStoppedAnimation<Color>(greenColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHomeService() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeService(
                title: "Top Up",
                iconUrl: 'assets/ic_topup.png',
                onTap: () {},
              ),
              HomeService(
                title: "Send",
                iconUrl: 'assets/ic_send.png',
                onTap: () {},
              ),
              HomeService(
                title: "Withdraw",
                iconUrl: 'assets/ic_withdraw.png',
                onTap: () {},
              ),
              HomeService(
                title: "More",
                iconUrl: 'assets/ic_more.png',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transaction",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: const [
                HomeLatestTransaction(
                  title: "Top Up",
                  time: "Today, 10.00 AM",
                  value: "+ Rp 50.000",
                  iconUrl: 'assets/ic_topup.png',
                ),
                HomeLatestTransaction(
                  title: "Top Up",
                  time: "Today, 10.00 AM",
                  value: "+ Rp 50.000",
                  iconUrl: 'assets/ic_topup.png',
                ),
                HomeLatestTransaction(
                  title: "Top Up",
                  time: "Today, 10.00 AM",
                  value: "+ Rp 50.000",
                  iconUrl: 'assets/ic_topup.png',
                ),
                HomeLatestTransaction(
                  title: "Top Up",
                  time: "Today, 10.00 AM",
                  value: "+ Rp 50.000",
                  iconUrl: 'assets/ic_topup.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
