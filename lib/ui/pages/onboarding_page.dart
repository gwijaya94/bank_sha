import 'package:bank_sha/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Grow Your\nFinancial Today',
                    textAlign: TextAlign.center,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    "Our system is helping you to\nachieve a better goal",
                    textAlign: TextAlign.center,
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blueColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBgColor,
                        ),
                      ),
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.only(
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: lightBgColor,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(56),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Continue',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
