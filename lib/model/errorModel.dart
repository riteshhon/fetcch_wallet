// ignore_for_file: file_names

import 'dart:convert';

ErrorModel erroModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

String erroModelToJson(ErrorModel data) => json.encode(data.toJson());

class ErrorModel {
  int status;
  String error;
  DateTime timestamp;

  ErrorModel({
    required this.status,
    required this.error,
    required this.timestamp,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        status: json["status"],
        error: json["error"],
        timestamp: DateTime.parse(json["timestamp"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": error,
        "timestamp": timestamp.toIso8601String(),
      };
}
