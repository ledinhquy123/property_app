import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_bds/controller/account/changePass_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);
  final controller = Get.put(ChangePasswordController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: CustomText(
          text: 'Cài đặt tài khoản',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: kWidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Đổi mật khẩu',
                      fontSize: 17,
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Mật khẩu hiện tại',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Obx(
                      () => SizedBox(
                        height: kHeight * 0.06,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.oldPasswordController,
                          obscureText: !controller.isShowpass.value,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            labelText: 'Xác nhận mật khẩu',
                            suffixIcon: InkWell(
                              onTap: () {
                                controller.showpass();
                              },
                              child: controller.isShowpass.value == false
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Mật khẩu mới',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Obx(
                      () => SizedBox(
                        height: kHeight * 0.06,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controller.passwordController,
                          obscureText: !controller.isShownewpass.value,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            labelText: 'Xác nhận mật khẩu',
                            suffixIcon: InkWell(
                              onTap: () {
                                controller.shownewpass();
                              },
                              child: controller.isShownewpass.value == false
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomText(
                      text: 'Xác nhận mật khẩu mới',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Obx(
                      () => SizedBox(
                        height: kHeight * 0.06,
                        child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: !controller.isShowchanpass.value,
                            controller: controller.confirmPasswordController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                hintText: 'Xác nhận mật khẩu',
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.showchanpass();
                                    },
                                    icon:
                                        controller.isShowchanpass.value == false
                                            ? Icon(Icons.visibility_off)
                                            : Icon(Icons.visibility)))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Obx(() => SizedBox(
                          width: kWidth,
                          height: kHeight * 0.06,
                          child: ElevatedButton(
                              onPressed: controller.isLoading.value
                                  ? null
                                  : () {
                                      if (controller.oldPasswordController.text
                                              .isEmpty ||
                                          controller.passwordController.text
                                              .isEmpty ||
                                          controller.confirmPasswordController
                                              .text.isEmpty) {
                                        AwesomeDialog(
                                                context: Get.context!,
                                                dialogType: DialogType.error,
                                                animType: AnimType.rightSlide,
                                                title: 'Thông báo',
                                                desc:
                                                    'Vui lòng nhập đầy đủ thông tin',
                                                btnOkOnPress: () {})
                                            .show();
                                      } else if (controller
                                              .confirmPasswordController.text !=
                                          controller.passwordController.text) {
                                        AwesomeDialog(
                                                context: Get.context!,
                                                dialogType: DialogType.error,
                                                animType: AnimType.rightSlide,
                                                title: 'Thông báo',
                                                desc:
                                                    'Nhập lại mật khẩu không chính xác',
                                                btnOkOnPress: () {})
                                            .show();
                                      } else {
                                        controller.changePassword(
                                            oldPassword: controller
                                                .oldPasswordController.text,
                                            confirmPassword: controller
                                                .confirmPasswordController.text,
                                            password: controller
                                                .passwordController.text);
                                      }
                                    },
                              child: controller.isLoading.value == false
                                  ? CustomText(
                                      text: 'Lưu thay đổi',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )
                                  : SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: CircularProgressIndicator())),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: kWidth,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Yêu cầu xóa tài khoản',
                      fontSize: 17,
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Mật khẩu hiện tại',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              hintText: 'Mật khẩu hiện tại',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: kWidth,
                      height: kHeight * 0.06,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: CustomText(
                            text: 'Xóa tài khoản',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Lưu ý',
                      fontWeight: FontWeight.bold,
                      color: sColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text:
                          '- Quý khách sẽ không thể đăng nhập lại vào tài khoản này sau khi bị xoá.',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text:
                          '- Các dữ liệu như họ tên, số điện thoại và email sẽ bị xoá và không thể sử dụng để đăng ký tài khoản mới.',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text:
                          '- Trong trường hợp bạn muốn sử dụng lại số điện thoại này, vui lòng liên hệ CSKH để được hỗ trợ.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
