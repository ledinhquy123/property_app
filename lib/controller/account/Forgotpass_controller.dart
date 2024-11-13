import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../service/auth/auth_api.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ForgotPasswordController());
  }
}

class ForgotPasswordController extends GetxController {
  final isLoading = false.obs;
  final emailController = TextEditingController();

  void ForgotPassword({String? email}) async {
    isLoading.value = true;
    var result = await AuthApi.resetPassword(
      email: email,
    );
    try {
      if (result?.status == 200) {
        isLoading.value = false;
        AwesomeDialog(
                context: Get.context!,
                dialogType: DialogType.success,
                animType: AnimType.rightSlide,
                title: 'Thông báo',
                desc: 'Gửi mật khẩu về email thành công',
                btnOkOnPress: () {})
            .show();
      } else {
        print(result);
        print(email);
        AwesomeDialog(
                context: Get.context!,
                dialogType: DialogType.error,
                animType: AnimType.rightSlide,
                title: 'Thông báo',
                desc: 'Email không có trong hệ thống',
                btnOkOnPress: () {})
            .show();
        isLoading.value = false;
      }
    } catch (e) {
      print(e);
    }
  }
}
