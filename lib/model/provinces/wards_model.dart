// To parse this JSON data, do
//
//     final wardsModel = wardsModelFromJson(jsonString);

import 'dart:convert';

WardsModel wardsModelFromJson(String str) =>
    WardsModel.fromJson(json.decode(str));

String wardsModelToJson(WardsModel data) => json.encode(data.toJson());

class WardsModel {
  int? status;
  String? message;
  List<Datum>? data;

  WardsModel({
    this.status,
    this.message,
    this.data,
  });

  factory WardsModel.fromJson(Map<String, dynamic> json) => WardsModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int? code;
  String? name;

  Datum({
    this.code,
    this.name,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        code: json["code"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
      };
}
