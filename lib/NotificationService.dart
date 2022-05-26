import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

class NotificationService {
  Future<void> sendPushNotifications(String title, String msg,
      {String? userId = ''}) async {
    Map req = {
      'headings': {
        'en': title,
        'ar': title,
      },
      'contents': {
        'en': msg,
        'ar': msg,
      },
      'app_id': '5f15a4db-922d-4046-a569-652a803f55f9',
    };
    if (userId!.isNotEmpty) {
      req.addAll({
        'include_player_ids': [userId]
      });
    } else
      req.addAll({
        'included_segments': ['All']
      });
    req.addAll({'app_id': '5f15a4db-922d-4046-a569-652a803f55f9'});
    var header = {
      HttpHeaders.authorizationHeader:
          'Basic YTEyNDExOTMtZTg4Mi00Y2U3LTg3MDQtYTY2NWI5MzNkYzBm',
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
    };

    print(jsonEncode(req));
    Response res = await post(
      Uri.parse('https://onesignal.com/api/v1/notifications'),
      body: jsonEncode(req),
      headers: header,
    );

    print(res.statusCode);
    print(res.body);

    if (res.statusCode == 200) {
    } else {}
  }
}
