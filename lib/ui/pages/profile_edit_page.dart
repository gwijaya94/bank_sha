import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      appBar: const AppBarHeader(
        title: "Edit Profile",
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InputForm(
                  label: "Username",
                ),
                const SizedBox(
                  height: 16,
                ),
                const InputForm(
                  label: "Fullname",
                ),
                const SizedBox(
                  height: 16,
                ),
                const InputForm(
                  label: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16,
                ),
                const InputForm(
                  label: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: "Update Now",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      "/profile-edit-status",
                      (route) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
