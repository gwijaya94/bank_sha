import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;

  const Screen({
    Key? key,
    required this.child,
    this.appBar,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? lightBgColor,
      appBar: appBar,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
