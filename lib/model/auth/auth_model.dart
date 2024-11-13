import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  int? status;
  String? message;
  Data? data;

  AuthModel({this.status, this.message, this.data});

  AuthModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? username;
  String? fullname;
  String? email;
  String? phone;
  String? birthday;
  int? gender;
  String? avatar;
  String? address;

  String? createdAt;

  Data(
      {this.id,
      this.username,
      this.fullname,
      this.email,
      this.birthday,
      this.gender,
      this.avatar,
      this.address,
      this.phone,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullname = json['fullname'];
    email = json['email'];
    birthday = json['birthday'];
    gender = json['gender'];
    avatar = json['avatar'];
    address = json['address'];
    phone = json['phone'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['phone'] = this.phone;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['birthday'] = this.birthday;
    data['gender'] = this.gender;
    data['avatar'] = this.avatar;
    data['address'] = this.address;
    data['created_at'] = this.createdAt;
    return data;
  }
}
