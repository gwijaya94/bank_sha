import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: loadThemeData(),
      routes: {
        "/": (context) => const SplashPage(),
        "/onboarding": (context) => const OnBoardingPage(),
        "/sign-in": (context) => const SignInPage(),
        "/sign-up": (context) => const SignUpPage(),
        "/sign-up-set-profile": (context) => const SignUpProfilePage(),
        "/sign-up-set-ktp": (context) => const SignUpProfileKTPPage(),
        "/sign-up-status": (context) => const SignUpStatusPage(),
        "/home": (context) => const HomePage(),
        "/profile": (context) => const ProfilePage(),
        "/pin": (context) => const PinPage(),
        "/profile-edit": (context) => const ProfileEditPage(),
        "/profile-edit-pin": (context) => const ProfileEditPinPage(),
        "/profile-edit-status": (context) => const ProfileEditStatusPage(),
        "/topup": (context) => const TopupPage(),
        "/topup-amount": (context) => const TopupAmoutPage(),
        "/topup-status": (context) => const TopupStatusPage(),
        "/transfer": (context) => const TransferPage(),
      },
    );
  }
}
