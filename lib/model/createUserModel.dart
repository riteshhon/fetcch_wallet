// ignore_for_file: file_names

import 'dart:convert';

CreateUserModel userFromJson(String str) =>
    CreateUserModel.fromJson(json.decode(str));

String userToJson(CreateUserModel data) => json.encode(data.toJson());

class CreateUserModel {
  String? email;
  String? passcode;
  String? name;
  String? identity;

  CreateUserModel({
    required this.email,
    required this.passcode,
    required this.name,
    required this.identity,
  });

  factory CreateUserModel.fromJson(Map<String, dynamic> json) =>
      CreateUserModel(
        email: json["email"],
        passcode: json["passcode"],
        name: json["name"],
        identity: json["identity"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "passcode": passcode,
        "name": name,
        "identity": identity,
      };
}
