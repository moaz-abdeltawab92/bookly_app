import 'package:bookly_app/core/functions/custom_snake_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnakeBar(context, 'Could not launch $url');
    }
  }
}
