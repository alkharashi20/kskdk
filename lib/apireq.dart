import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:newsappbyme/articleee.dart';
import 'package:newsappbyme/cobt.dart';
import 'package:newsappbyme/jsontoflutter.dart';
class apireq {
  static Future<Jsontoflutter> getdata() async {
    Uri uri = Uri.https(apicont.baseUrl, apicont.source, {
      "apiKey": "a219f2f154b64fce9efa2895ebc0ccd8"
    });
    var res = await http.get(uri);
    var h = res.body;
    var json = jsonDecode(h);
    return Jsontoflutter.fromJson(json);
  }
}