import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
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
            buildLevelSection(),
            buildServices(),
            buildLatestTransactions(),
            buildSendAgainSection(),
            buildFriendlyTips(context),
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
        const Spacer(),
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

Widget buildLevelSection() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              "Level 1",
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            const Spacer(),
            Text(
              "55%",
              style: greenTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            Text(
              " of Rp 20.000",
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: LinearProgressIndicator(
            value: 0.55,
            minHeight: 5,
            valueColor: AlwaysStoppedAnimation(greenColor),
            backgroundColor: lightBgColor,
          ),
        )
      ],
    ),
  );
}

Widget buildServices() {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Do Something",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServiceItem(
              iconUrl: "assets/ic_topup.png",
              title: "Top Up",
              onTap: () {},
            ),
            HomeServiceItem(
              iconUrl: "assets/ic_send.png",
              title: "Send",
              onTap: () {},
            ),
            HomeServiceItem(
              iconUrl: "assets/ic_withdraw.png",
              title: "Withdraw",
              onTap: () {},
            ),
            HomeServiceItem(
              iconUrl: "assets/ic_more.png",
              title: "More",
              onTap: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildLatestTransactions() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transactions",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 14,
          ),
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: const Column(
            children: [
              HomeTransactionItem(
                title: "Top Up",
                iconUrl: "assets/ic_transaction_cat1.png",
                time: "Yesterday",
                value: "+ 450.000",
              ),
              HomeTransactionItem(
                title: "Cashback",
                iconUrl: "assets/ic_transaction_cat2.png",
                time: "Sep 11",
                value: "+ 22.000",
              ),
              HomeTransactionItem(
                title: "Withdraw",
                iconUrl: "assets/ic_transaction_cat3.png",
                time: "Sep 2",
                value: "- 5.000",
              ),
              HomeTransactionItem(
                title: "Transfer",
                iconUrl: "assets/ic_transaction_cat4.png",
                time: "Aug 27",
                value: "- 123.500",
              ),
              HomeTransactionItem(
                title: "Electric",
                iconUrl: "assets/ic_transaction_cat5.png",
                time: "Feb 18",
                value: "- 90.000",
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildSendAgainSection() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Send Again",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeUserItem(
                userName: "yuanita",
                url: "assets/img_friend1.png",
              ),
              HomeUserItem(
                userName: "jani",
                url: "assets/img_friend2.png",
              ),
              HomeUserItem(
                userName: "urip",
                url: "assets/img_friend3.png",
              ),
              HomeUserItem(
                userName: "masa",
                url: "assets/img_friend4.png",
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildFriendlyTips(BuildContext context) {
  Size screenSize = MediaQuery.sizeOf(context);
  double spacingX = 17;
  double tipsWidth = (screenSize.width - 24 * 2 - spacingX) / 2;

  return Container(
    margin: const EdgeInsets.only(
      top: 30,
      bottom: 50,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Friendly Tips",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Wrap(
          spacing: spacingX,
          runSpacing: 18,
          runAlignment: WrapAlignment.end,
          children: [
            HomeTipsItem(
              width: tipsWidth,
              title: "Best tips for using a credit card",
              imgUrl: "assets/img_tips1.png",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              width: tipsWidth,
              title: "Spot the good pie of finance model",
              imgUrl: "assets/img_tips2.png",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              width: tipsWidth,
              title: "Great hack to get better advices",
              imgUrl: "assets/img_tips3.png",
              url: "https://www.google.com",
            ),
            HomeTipsItem(
              width: tipsWidth,
              title: "Save more penny buy this instead",
              imgUrl: "assets/img_tips4.png",
              url: "https://www.google.com",
            ),
          ],
        )
      ],
    ),
  );
}
