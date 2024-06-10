import 'dart:convert';
import 'package:jay247/pages/auth/models/siginin.dart';
import 'package:jay247/pages/auth/models/signup.dart';
import 'package:jay247/pages/auth/models/verify.dart';
import 'package:jay247/utills/consts/api_url.dart';
import 'package:jay247/utills/helpers/api_helper.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
// import 'package:http/http.dart';

class AuthApi {
  static Future<dynamic> signUp(SignUp data) async {
    var bodyData = data.toJson();
    var end_point = ApiUrl.sign_up_url;
    var pathUrl = ApiUrl.base_url + end_point;
    final url = Uri.parse(pathUrl); //Repclace Your Endpoint
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(bodyData);
    final response = await http.post(url, headers: headers, body: body);
    try {
      final data = ApiHelper.processResponse(response);
      return data;
    } catch (e) {
      throw e;
    }
  }

  static Future<dynamic> signIn(SignIn data) async {
    var bodyData = data.toJson();
    var pathUrl = ApiUrl.base_url + ApiUrl.sign_in_url;
    final url = Uri.parse(pathUrl); //Repclace Your Endpoint
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(bodyData);
    final response = await http.post(url, headers: headers, body: body);
    try {
      final data = ApiHelper.processResponse(response);
      return data;
    } catch (e) {
      throw e;
    }
  }

  static Future<dynamic> verifyEmail(VerifyEmail data) async {
    var bodyData = data.toJson();
    var pathUrl = ApiUrl.base_url + ApiUrl.verify_email_url;
    final url = Uri.parse(pathUrl); //Repclace Your Endpoint
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(bodyData);
    final response = await http.patch(url, headers: headers, body: body);
    print(response.body);
    try {
      final data = ApiHelper.processResponse(response);
      return data;
    } catch (e) {
      throw e;
    }
  }

  static Future<Response> validateUsername(String username) async {
    var string = '{username: $username}';
    var bodyData = jsonEncode(string);
    var pathUrl = ApiUrl.base_url + ApiUrl.check_username;
    final url = Uri.parse(pathUrl); //Repclace Your Endpoint
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(bodyData);
    final response = await http.post(url, headers: headers, body: body);
    return response;
  }

  static Future<dynamic> resendotp(String email) async {
    // var string = '{"email": "$email"}';
    // var bodyData = jsonEncode(string);
    var pathUrl = ApiUrl.base_url + ApiUrl.resend_otp_code;
    final url = Uri.parse(pathUrl); //Repclace Your Endpoint
    final headers = {'Content-Type': 'application/json'};
    final body = json.encode({"email": "$email"});
    final response = await http.post(url, headers: headers, body: body);
    return ApiHelper.processResponse(response);
  }
}
