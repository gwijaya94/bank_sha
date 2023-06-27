import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl, title;
  final VoidCallback? onTap;

  const ProfileMenuItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
          ),
          const SizedBox(
            width: 18,
          ),
          Expanded(
            child: Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
