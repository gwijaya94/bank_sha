import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class SignUpProfilePage extends StatelessWidget {
  const SignUpProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/img_logo_light.png",
                ),
              ),
            ),
          ),
          Text(
            "Join Us to Unlock\nYour Growth",
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: lightBgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/ic_upload.png",
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
                // ? Uploaded Profile
                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: BoxDecoration(
                //     color: lightBgColor,
                //     shape: BoxShape.circle,
                //     image: const DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage("assets/img_profile.png"),
                //     ),
                //   ),
                // ),

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
                  height: 30,
                ),
                const InputForm(
                  label: "Set PIN (6 digit number)",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/sign-up-set-ktp");
                  },
                  title: 'Continue',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
