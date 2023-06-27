import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchLink(String url) async {
  bool canLaunch = await canLaunchUrlString(url);
  if (canLaunch) {
    await launchUrlString(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
