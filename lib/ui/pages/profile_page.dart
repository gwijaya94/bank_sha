import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
