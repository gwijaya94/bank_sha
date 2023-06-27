import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/ic_overview.png",
                width: 20,
                color: blueColor,
              ),
              label: "Overview",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/ic_history.png",
                width: 20,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/ic_statistic.png",
                width: 20,
              ),
              label: "Statistic",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/ic_reward.png",
                width: 20,
              ),
              label: "Reward",
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          "assets/ic_plus_circle.png",
          width: 24,
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            buildProfile(),
            buildWalletCard(),
          ],
        ),
      ),
    );
  }
}

Widget buildProfile() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Howdy,",
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            Text(
              "shaynahan",
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/img_profile.png"),
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
              child: Center(
                child: Icon(
                  Icons.check_circle,
                  size: 16,
                  color: greenColor,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildWalletCard() {
  return Container(
    width: double.infinity,
    height: 220,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/img_bg_card.png"),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Shayna Hanna",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "**** **** **** 1280",
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
            letterSpacing: 5,
          ),
        ),
        Spacer(),
        Text(
          "Balance",
          style: whiteTextStyle,
        ),
        Text(
          "Rp 12.500",
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      ],
    ),
  );
}
