import 'dart:convert';

import 'package:http/http.dart';

class ApiHelper {
  static dynamic processResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return json.decode(response.body);
    } else if (response.statusCode == 400) {
      final info = json.decode(response.body);
      if (info['data'] != null) {
        return json.decode(response.body);
      }
      throw jsonDecode(response.body)['message'];
    } else if (response.statusCode == 401) {
      throw Exception("Unauthorized");
    } else if (response.statusCode == 403) {
      throw Exception("Forbidden");
    } else if (response.statusCode == 404) {
      if (response.body != null) {
        json.decode(response.body);
      }
      throw Exception("Not found");
    } else if (response.statusCode == 405) {
      throw Exception("Method not allowed");
    } else if (response.statusCode == 500) {
      throw Exception("Internal server error");
    } else if (response.statusCode == 502) {
      throw Exception("Bad gateway");
    } else if (response.statusCode == 503) {
      throw Exception("Service unavailable");
    } else {
      throw Exception("Unknown response status");
    }
  }
}
