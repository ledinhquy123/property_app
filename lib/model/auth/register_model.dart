import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  int? status;
  String? message;
  MessageValidate? messageValidate;

  RegisterModel({this.status, this.message, this.messageValidate});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    messageValidate = json['message_validate'] != null
        ? new MessageValidate.fromJson(json['message_validate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.messageValidate != null) {
      data['message_validate'] = this.messageValidate!.toJson();
    }
    return data;
  }
}

class MessageValidate {
  List<String>? email;
  List<String>? password;

  MessageValidate({this.email, this.password});

  MessageValidate.fromJson(Map<String, dynamic> json) {
    email = json['email'].cast<String>();
    password = json['password'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
