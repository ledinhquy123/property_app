import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../model/auth/register_model.dart';
import '../../service/auth/auth_api.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => RegisterController());
  }
}

class RegisterController extends GetxController {
  final isLoading = false.obs;
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final passWordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

  final isHiddenPassword = false.obs;
  final isHiddenPassword1 = false.obs;

  final registerInfo = RegisterModel().obs;
  void showPassword() {
    isHiddenPassword.value = !isHiddenPassword.value;
  }

  void showPassword1() {
    isHiddenPassword1.value = !isHiddenPassword1.value;
  }

  void register(
      {String? email,
      String? fullName,
      String? phone,
      String? passWord,
      String? confirmPassword}) async {
    isLoading.value = true;
    var result = await AuthApi.register(
      email: email,
      fullName: fullName,
      passWord: passWord,
      phone: phone,
      confirmPassword: confirmPassword,
    );
    if (result?.status == 200) {
      Get.snackbar('Thành công', 'Tài khoản đã được đăng ký thành công',
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.check_circle,
            color: Colors.green,
          ));
      emailController.clear();
      fullNameController.clear();
      passWordController.clear();
      confirmPasswordController.clear();
      phoneController.clear();
      isLoading.value = false;
      Get.offAllNamed('/login');
    } else {
      AwesomeDialog(
        context: Get.context!,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Thất bại',
        desc: 'Số điện thoại hoặc Email đăng kí đã tồn tại',
        btnOkOnPress: () {},
      ).show();
      isLoading.value = false;
    }
  }
}
