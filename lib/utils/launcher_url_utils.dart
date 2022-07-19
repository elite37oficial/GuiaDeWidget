import 'package:url_launcher/url_launcher.dart';

class LaucherUrl {
  Future<void>? goUrl({required String url}) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}
