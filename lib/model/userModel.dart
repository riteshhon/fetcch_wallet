// ignore_for_file: file_names

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int status;
  Data data;
  DateTime timestamp;

  UserModel({
    required this.status,
    required this.data,
    required this.timestamp,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "timestamp": timestamp.toIso8601String(),
      };
}

class Data {
  String id;
  String email;
  String passcode;
  String name;
  String identity;
  DateTime createdAt;
  DateTime updatedAt;

  Data({
    required this.id,
    required this.email,
    required this.passcode,
    required this.name,
    required this.identity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
        passcode: json["passcode"],
        name: json["name"],
        identity: json["identity"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "passcode": passcode,
        "name": name,
        "identity": identity,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
