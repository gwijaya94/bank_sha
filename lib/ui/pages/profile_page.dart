import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      appBar: const AppBarHeader(
        title: "My Profile",
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(30).copyWith(bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    image: const DecorationImage(
                      image: AssetImage("assets/img_profile.png"),
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
                  "Shayna Hanna",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_edit_profile.png",
                  title: "Edit Profile",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit");
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_pin.png",
                  title: "My PIN",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/ic_wallet.png",
                  title: "Wallet Settigs",
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
            height: 90,
          ),
          CustomTextButton(
            title: "Report a Problem",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
