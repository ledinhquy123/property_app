import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../service/auth/auth_api.dart';
import '../../model/auth/auth_model.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ChangePasswordBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ChangePasswordController());
  }
}

class ChangePasswordController extends GetxController {
  final isLoading = false.obs;
  final oldPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final isShowpass = false.obs;
  final isShownewpass = false.obs;
  final isShowchanpass = false.obs;

  void showpass() {
    isShowpass.value = !isShowpass.value;
  }

  void shownewpass() {
    isShownewpass.value = !isShownewpass.value;
  }

  void showchanpass() {
    isShowchanpass.value = !isShowchanpass.value;
  }

  void changePassword(
      {String? oldPassword, String? password, String? confirmPassword}) async {
    isLoading.value = true;
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    var result = await AuthApi.changePassword(
      token: token,
      oldPassword: oldPassword,
      passWord: password,
      confirmPassword: confirmPassword,
    );
    if (result?.status == 200) {
      isLoading.value = false;
      AwesomeDialog(
              context: Get.context!,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Thông báo',
              desc: 'Đổi mật khẩu thành công',
              btnOkOnPress: () {})
          .show();
      confirmPasswordController.clear();
      oldPasswordController.clear();
      passwordController.clear();
    } else {
      AwesomeDialog(
              context: Get.context!,
              dialogType: DialogType.error,
              animType: AnimType.rightSlide,
              title: 'Thông báo',
              desc: 'Mật khẫu cũ không chính xác',
              btnOkOnPress: () {})
          .show();
      isLoading.value = false;
    }
  }
}
