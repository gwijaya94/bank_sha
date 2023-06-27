import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/utils/index.dart';
import 'package:flutter/material.dart';

class HomeTipsItem extends StatelessWidget {
  final String title, imgUrl, url;
  final double width;

  const HomeTipsItem({
    Key? key,
    required this.title,
    required this.imgUrl,
    this.width = double.infinity,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchLink(url),
      child: Container(
        width: width,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                imgUrl,
                width: double.infinity,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
