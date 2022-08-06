import 'package:flutter_easy_http_api/api/api_const.dart';
import 'package:http/http.dart' as http;

class APICall {
  Future<http.Response> getSearchList() async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.get(Uri.parse(APIConst.search),
        headers: headers);
  }
}
