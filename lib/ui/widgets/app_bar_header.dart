import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isCenterTitle;
  final double? elevation;
  final IconThemeData? iconTheme;
  final TextStyle? titleStyle;
  final Color? backgroundColor;

  const AppBarHeader({
    Key? key,
    required this.title,
    this.isCenterTitle = true,
    this.elevation = 0,
    this.iconTheme,
    this.titleStyle,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defBgColor = backgroundColor ?? lightBgColor;

    TextStyle defTextStyle = blackTextStyle.copyWith(
      fontSize: 20,
      fontWeight: semiBold,
    );
    IconThemeData defIconTheme = iconTheme ?? IconThemeData(color: blackColor);

    return AppBar(
      centerTitle: isCenterTitle,
      elevation: elevation,
      iconTheme: defIconTheme,
      title: Text(title, style: defTextStyle.merge(titleStyle)),
      backgroundColor: defBgColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
