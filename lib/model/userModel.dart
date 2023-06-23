import 'dart:convert';

UserModel userFromJson(String str) => UserModel.fromJson(json.decode(str));

String userToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? email;
  String? passcode;
  String? name;
  String? identity;

  UserModel({
    required this.email,
    required this.passcode,
    required this.name,
    required this.identity,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
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
