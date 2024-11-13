import 'package:app_bds/controller/auth/login_controller.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../unit.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(kWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: kHeight * 0.1,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: kWidth * 0.6,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: kHeight * 0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.userNameController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          labelText: 'Số điện thoại',
                          prefixIcon: Icon(Icons.phone)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        obscureText: !controller.isHiddenPassword.value,
                        keyboardType: TextInputType.text,
                        controller: controller.passWordController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            labelText: 'Mật khẩu',
                            suffixIcon: InkWell(
                                onTap: () {
                                  controller.showPassword();
                                },
                                child:
                                    controller.isHiddenPassword.value == false
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)),
                            prefixIcon: Icon(Icons.lock)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => SizedBox(
                      height: kHeight * 0.058,
                      width: kWidth,
                      child: ElevatedButton(
                        onPressed: controller.isLoading.value
                            ? null // Nút bị vô hiệu hóa nếu đang tải
                            : () {
                                if (controller
                                        .userNameController.text.isEmpty ||
                                    controller
                                        .passWordController.text.isEmpty) {
                                  Get.snackbar('Thông báo',
                                      'Vui lòng nhập đầy đủ thông tin');
                                  return;
                                } else {
                                  controller.login(
                                    username:
                                        controller.userNameController.text,
                                    password:
                                        controller.passWordController.text,
                                  );
                                }
                              },
                        child: controller.isLoading.value
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator())

                            // Hiển thị tiến trình nếu đang tải
                            : CustomText(
                                text: 'Đăng nhập',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/forgotpass');
                    },
                    child: Center(
                      child: CustomText(
                        text: 'Quên mật khẩu',
                        color: sColor,
                        textDecoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Chưa có tài khoản? ',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: 'Đăng ký',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offNamed('/register');
                            },
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: sColor,
                            decoration: TextDecoration.underline,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
