import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfileEditStatusPage extends StatelessWidget {
  const ProfileEditStatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nice Update!",
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              "Your data has been updated.",
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: "My Profile",
              width: 185,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/home",
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
