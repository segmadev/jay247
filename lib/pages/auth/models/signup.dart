// To parse this JSON data, do
//
//     final signUp = signUpFromJson(jsonString);

import 'dart:convert';

SignUp signUpFromJson(String str) => SignUp.fromJson(json.decode(str));

String signUpToJson(SignUp data) => json.encode(data.toJson());

class SignUp {
  String username;
  String name;
  String email;
  String phoneNumber;
  String password;

  SignUp({
    required this.username,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  SignUp copyWith({
    String? username,
    String? name,
    String? email,
    String? phoneNumber,
    String? password,
  }) =>
      SignUp(
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
      );

  factory SignUp.fromJson(Map<String, dynamic> json) => SignUp(
        username: json["username"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "name": name,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
      };
}
