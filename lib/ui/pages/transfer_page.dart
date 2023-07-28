import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      appBar: const AppBarHeader(
        title: "Transfer",
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        children: [
          Text(
            "Search",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const InputForm(
            hints: "by username",
          ),
          buildRecentUsers(),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Users",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/img_friend1.png",
          name: "Yonna Jie",
          username: "yoenna",
          isVerified: false,
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/img_friend2.png",
          name: "Yonna Jie",
          username: "yoenna",
          isVerified: true,
        ),
        const TransferRecentUserItem(
          imageUrl: "assets/img_friend3.png",
          name: "Yonna Jie",
          username: "yoenna",
          isVerified: true,
        ),
      ],
    ),
  );
}
