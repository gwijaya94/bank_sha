import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      appBar: const AppBarHeader(
        title: "Edit Pin",
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
                InputForm(
                  label: "Curent PIN",
                  obscureText: true,
                  maxLength: 6,
                ),
                SizedBox(
                  height: 16,
                ),
                InputForm(
                  label: "New Pin",
                  obscureText: true,
                  maxLength: 6,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: "Update Now",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
