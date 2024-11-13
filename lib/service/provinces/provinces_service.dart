import 'dart:convert';

import 'package:app_bds/model/provinces/districts_model.dart';
import 'package:app_bds/unit.dart';
import 'package:http/http.dart' as http;

import '../../model/provinces/provinces_model.dart';
import '../../model/provinces/wards_model.dart';

class ProvincesApi {
  static final client = http.Client();

  static Future<ProvincesModel?> getProvinces() async {
    var response = await client.get(Uri.parse('$url/provinces'), headers: {
      'X-TOKEN-ACCESS': xToken,
    });
    if (response.statusCode == 200) {
      return provincesModelFromJson(response.body);
    } else {
      return null;
    }
  }

  static Future<DistrictsModel?> getDistricts({String? code}) async {
    var response = await client
        .get(Uri.parse('$url/districts?province_code=$code'), headers: {
      'X-TOKEN-ACCESS': xToken,
    });
    if (response.statusCode == 200) {
      return districtsModelFromJson(utf8.decode(response.bodyBytes));
    } else {
      return null;
    }
  }

  static Future<WardsModel?> getWards({String? code}) async {
    var response =
        await client.get(Uri.parse('$url/wards?district_code=$code'), headers: {
      'X-TOKEN-ACCESS': xToken,
    });
    if (response.statusCode == 200) {
      return wardsModelFromJson(utf8.decode(response.bodyBytes));
    } else {
      return null;
    }
  }
}
