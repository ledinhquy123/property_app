import 'dart:math';
import 'package:get/get.dart';
import '../../../model/auth/auth_model.dart';
import '../../../service/auth/auth_api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_bds/controller/account/account_controller.dart';
import 'package:app_bds/controller/account/infomation_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class UpdateinfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateinforController>(() => UpdateinforController());
  }
}

class UpdateinforController extends GetxController {
  final Data data = Get.arguments;
  final isLoading = false.obs;
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final GenderController = ''.obs;
  final locationController = TextEditingController();
  final ischeck = ''.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final ischeck = data.gender;
  }

  void updateInfo(
      {String? fullname,
      String? email,
      String? location,
      String? gender,
      String? token}) async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      var result = await AuthApi.updateInfo(
        fullName: fullname,
        email: email,
        address: location,
        gender: gender,
        token: token,
      );
      if (result?.status == 200) {
        //  Get.back();
        AwesomeDialog(
          context: Get.context!,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          title: 'Thông báo',
          desc: 'Cập nhật thành công',
          btnOkOnPress: () {},
        ).show();
        final controllerAccount = Get.find<AccountController>();
        final controllerinfomation = Get.find<InfomationController>();
        controllerinfomation.getAuth();
        controllerAccount.getAuth();
        isLoading.value = false;
        print(gender);
      } else {
        print(gender);
        AwesomeDialog(
          context: Get.context!,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Thông báo',
          desc: 'Cập nhật thông tin thất bại',
          btnOkOnPress: () {},
        ).show();
        isLoading.value = false;
      }
    } catch (e) {
      print(e);
    }
  }
}
