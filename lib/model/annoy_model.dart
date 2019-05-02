import 'package:annoy_someone/utils/constants.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AnnoyModel {
  String _annoyURL = 'https://annoy.zedground.com/milk';
  Future<String> postAnnoyRequest(String to, from, phoneNumber, zipCode) async{
    var data = {'to': to, 'from': from, 'phoneNumber': phoneNumber, 'zipCode': zipCode};
   final response = await http.post(
     _annoyURL,
     headers: {
       "content-type": "application/json"
     },
     body: jsonEncode(data)
   );
   String resp;
   switch (response.statusCode) {
     case 500: {
       print("internal server error");
       resp = RESPONSE_INTERNAL_SERVER_ERROR;
     }
     break;
     case 400: {
       print("bad request");
       resp = RESPONSE_STATUS_BAD_REQUEST;
     }
     break;
     case 200: {
       print("success");
       resp = RESPONSE_SUCCESS + to;
     }
     break;
     default: {
       print("something weird happened");
       resp = "Something odd happened";
     }
   }
    return resp;
  }
}

