import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../model/auth/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../service/auth/auth_api.dart';

class InfomationBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => InfomationController());
  }
}

class InfomationController extends GetxController {
  final isLoading = false.obs;
  final auth = AuthModel().data.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAuth();
  }

  void getAuth() async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      var result = await AuthApi.getAuth(token: token);
      auth.value = result?.data;
    } finally {
      isLoading.value = false;
    }
  }
}
