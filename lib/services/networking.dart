import 'dart:convert';
import 'package:http/http.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  String url;

  Future getData() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}