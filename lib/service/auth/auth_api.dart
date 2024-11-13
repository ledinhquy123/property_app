import 'package:http/http.dart' as http;

import '../../unit.dart';
import '../../model/auth/auth_model.dart';
import '../../model/auth/login_model.dart';
import '../../model/auth/status_model.dart';
import '../../model/auth/register_model.dart';

class AuthApi {
  static final client = http.Client();

  
  static Future<RegisterModel?> register(
      {String? fullName,
      String? email,
      String? phone,
      String? passWord,
      String? confirmPassword}) async {
    var response = await http.post(Uri.parse('$url/register'), headers: {
      'X-TOKEN-ACCESS': xToken,
    }, body: {
      "fullname": fullName,
      "email": email,
      "phone": phone,
      "password": passWord,
      "password_confirmation": confirmPassword,
    });
    if (response.statusCode == 200) {
      return registerModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<LoginModel?> login({String? username, String? password}) async {
    var response = await http.post(Uri.parse('$url/login'), headers: {
      'X-TOKEN-ACCESS': xToken,
    }, body: {
      "username": username,
      "password": password,
    });
    if (response.statusCode == 200) {
      return loginModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<AuthModel?> getAuth({String? token}) async {
    var response = await http.get(Uri.parse('$url/auth'), headers: {
      'Authorization': 'Bearer $token',
      'X-TOKEN-ACCESS': xToken,
    });
    if (response.statusCode == 200) {
      return authModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<StatusModel?> updateInfo(
      {String? email,
      String? fullName,
      String? gender,
      String? address,
      String? token}) async {
    var response = await http.put(Uri.parse('$url/auth'), headers: {
      'X-TOKEN-ACCESS': xToken,
      'Authorization': 'Bearer $token',
    }, body: {
      "fullname": fullName,
      "email": email,
      "address": address,
      "gender":  gender,
    });
    if (response.statusCode == 200) {
      return statusModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<StatusModel?> changePassword(
      {String? token,
      String? oldPassword,
      String? passWord,
      String? confirmPassword}) async {
    var response =
        await http.put(Uri.parse('$url/auth/update-password'), headers: {
      'X-TOKEN-ACCESS': xToken,
      'Authorization': 'Bearer $token',
    }, body: {
      "old_password": oldPassword,
      "password": passWord,
      "password_confirmation": confirmPassword,
    });
    if (response.statusCode == 200) {
      return statusModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<StatusModel?> resetPassword({String? email}) async {
    var response = await http.post(Uri.parse('$url/reset-password'), headers: {
      'X-TOKEN-ACCESS': xToken,
    }, body: {
      'email': email,
    });
    if (response.statusCode == 200) {
      return statusModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
