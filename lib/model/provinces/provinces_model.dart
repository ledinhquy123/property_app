// To parse this JSON data, do
//
//     final provincesModel = provincesModelFromJson(jsonString);

import 'dart:convert';

ProvincesModel provincesModelFromJson(String str) =>
    ProvincesModel.fromJson(json.decode(str));

String provincesModelToJson(ProvincesModel data) => json.encode(data.toJson());

class ProvincesModel {
  int? status;
  String? message;
  List<Datum>? data;

  ProvincesModel({
    this.status,
    this.message,
    this.data,
  });

  factory ProvincesModel.fromJson(Map<String, dynamic> json) => ProvincesModel(
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
