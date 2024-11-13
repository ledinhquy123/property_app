// To parse this JSON data, do
//
//     final districtsModel = districtsModelFromJson(jsonString);

import 'dart:convert';

DistrictsModel districtsModelFromJson(String str) =>
    DistrictsModel.fromJson(json.decode(str));

String districtsModelToJson(DistrictsModel data) => json.encode(data.toJson());

class DistrictsModel {
  int? status;
  String? message;
  List<Datum>? data;

  DistrictsModel({
    this.status,
    this.message,
    this.data,
  });

  factory DistrictsModel.fromJson(Map<String, dynamic> json) => DistrictsModel(
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
