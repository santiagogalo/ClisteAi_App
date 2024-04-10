import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String url) async {
  if (!await launch(url)) {
    throw Exception('Could not launch $url');
  }
}
