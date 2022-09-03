import 'package:bank_flutter/ui/pages/sign_in_page.dart';
import 'package:bank_flutter/ui/widgets/buttons.dart';
import 'package:bank_flutter/ui/widgets/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> titles = [
    "Welcome to Bank \nFlutter ",
    "Build from zero easy \n way to manage your money",
    "get started with Bank",
  ];
  List<String> sub = [
    "Bank is a simple \n App to manage your money",
    "Bank is a simple \n Build manage your money",
    "Bank is a simple \n Started manage your money",
  ];
  double widthApp = Get.width * 0.8;
  double heightApp = Get.height * 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                'assets/img_onboarding1.png',
                height: Get.height * 0.3,
              ),
              Image.asset(
                'assets/img_onboarding2.png',
                height: Get.height * 0.3,
              ),
              Image.asset(
                'assets/img_onboarding3.png',
                height: Get.height * 0.3,
              ),
            ],
            options: CarouselOptions(
              height: Get.height * 0.3,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) => setState(
                () {
                  currentIndex = index;
                },
              ),
            ),
            carouselController: carouselController,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  sub[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 38 : 50,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          CustomeFilledButton(
                            title: "Get Started",
                            width: 250,
                            height: heightApp * 0.5,
                            onPressed: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomTextButton(
                            title: "Sign In",
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/login',
                                (route) => false,
                              );
                            },
                            width: widthApp,
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 0 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 1 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 2 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                          CustomeFilledButton(
                            title: "Next",
                            width: 150,
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                        ],
                      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
