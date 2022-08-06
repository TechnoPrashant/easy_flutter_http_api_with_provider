import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easy_http_api/api/api_call.dart';
import 'package:flutter_easy_http_api/model/enum.dart';
import 'package:flutter_easy_http_api/model/search_list_response.dart';
import 'package:flutter_easy_http_api/utils/common_util.dart';

class SearchViewModel extends ChangeNotifier {
  late SearchListResponse _searchListResponse;

  SearchListResponse get searchListResponse => _searchListResponse;

  Status get status => _status;
  Status _status = Status.none;

  Future<void> getSearchList() async {
    CommonUtil().checkInternetConnection().then((value) {
      if (value) {
        _status = Status.loading;
        notifyListeners();
        APICall().getSearchList().then((response) {
          if (response.statusCode == 200) {
            _searchListResponse =
                SearchListResponse.fromJson(json.decode(response.body));
            _status = Status.success;
            notifyListeners();
          } else {
            _status = Status.failed;
            notifyListeners();
          }
        });
      } else {
        _status = Status.noInternet;
        notifyListeners();
      }
    });
  }
}
