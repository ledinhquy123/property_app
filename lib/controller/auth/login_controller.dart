import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../service/auth/auth_api.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => LoginController());
  }
}

class LoginController extends GetxController {
  final isLoading = false.obs;
  final userNameController = TextEditingController();
  final passWordController = TextEditingController();
  final isHiddenPassword = false.obs;

  void showPassword() {
    isHiddenPassword.value = !isHiddenPassword.value;
  }

  void login({String? username, String? password}) async {
    isLoading.value = true;
    var result = await AuthApi.login(username: username, password: password);
    if (result?.status == 200) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', result?.accessToken ?? '');
      Get.offAllNamed('/dashboardPage');
      isLoading.value = false;
    } else {
       AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Thất bại'.tr,
        desc: 'Tài khoản hoặc mật khẩu không chính xác'.tr,
        btnOkOnPress: () {},
      ).show();
      isLoading.value = false;
      return;
    }
  }
}
