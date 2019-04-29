import 'package:annoy_someone/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AnnoyModel {
  String _annoyURL = 'https://annoy.zedground.com/milk';
  String postAnnoyRequest(String to, from, phoneNumber) {
    var status;
    http.post(_annoyURL, headers: {'content-type': 'application/json'}, body: jsonEncode({'to': to, 'from': from, 'phoneNumber': phoneNumber}))
    .then((response) => {
      status = response.statusCode
    });
    switch (status){
      case 500: {
        return RESPONSE_INTERNAL_SERVER_ERROR;
      }
      break;
      case 400: {
        return RESPONSE_STATUS_BAD_REQUEST;
      }
      break;
      default: {
        return RESPONSE_SUCCESS + to;
      }
      break;
    }
  }
}

