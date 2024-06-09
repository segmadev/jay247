// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

import 'package:jay247/utills/local_storage/storage_utility.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());
var storage = ALocalStorage();

class User {
  String id;
  bool isAdmin;
  String username;
  String email;
  String name;
  String phoneNumber;
  dynamic referrer;
  String referralCode;
  bool isVerified;
  int createdAt;
  int updatedAt;

  User({
    required this.id,
    required this.isAdmin,
    required this.username,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.referrer,
    required this.referralCode,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
  });

  User copyWith({
    String? id,
    bool? isAdmin,
    String? username,
    String? email,
    String? name,
    String? phoneNumber,
    dynamic referrer,
    String? referralCode,
    bool? isVerified,
    int? createdAt,
    int? updatedAt,
  }) =>
      User(
        id: id ?? this.id,
        isAdmin: isAdmin ?? this.isAdmin,
        username: username ?? this.username,
        email: email ?? this.email,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        referrer: referrer ?? this.referrer,
        referralCode: referralCode ?? this.referralCode,
        isVerified: isVerified ?? this.isVerified,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        isAdmin: json["isAdmin"],
        username: json["username"],
        email: json["email"],
        name: json["name"],
        phoneNumber: json["phoneNumber"],
        referrer: json["referrer"],
        referralCode: json["referralCode"],
        isVerified: json["isVerified"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isAdmin": isAdmin,
        "username": username,
        "email": email,
        "name": name,
        "phoneNumber": phoneNumber,
        "referrer": referrer,
        "referralCode": referralCode,
        "isVerified": isVerified,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };

  static final user = User.fromJson(storage.readData("currentUser"));
}
