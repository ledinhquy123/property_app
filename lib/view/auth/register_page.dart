import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_bds/controller/auth/register_controller.dart';
import '../../unit.dart';
import '../../widget/custom_text.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Column(
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
                      controller: controller.fullNameController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          labelText: 'Họ và tên',
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: kHeight * 0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: controller.phoneController,
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
                  SizedBox(
                    height: kHeight * 0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                          labelText: 'Mã giới thiệu (nếu có)',
                          prefixIcon: Icon(Icons.insert_link_sharp)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: controller.passWordController,
                        obscureText: !controller.isHiddenPassword.value,
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
                  Obx(() =>
                  SizedBox(
                    height: kHeight * 0.06,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: controller.confirmPasswordController,
                      obscureText: !controller.isHiddenPassword1.value,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          labelText: 'Xác nhận mật khẩu',
                          suffixIcon: InkWell(
                            onTap: () {
                              controller.showPassword1();
                            },
                            child: controller.isHiddenPassword.value == false
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          ),
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
                              ? null
                              : () {
                                  if (controller.fullNameController.text.isEmpty ||
                                      controller.phoneController.text.isEmpty ||
                                      controller.emailController.text.isEmpty ||
                                      controller
                                          .passWordController.text.isEmpty ||
                                      controller.confirmPasswordController.text
                                          .isEmpty) {
                                    Get.snackbar('Thông báo',
                                        'Vui lòng nhập đầy đủ các trường');
                                  } else if (controller
                                          .passWordController.text !=
                                      controller
                                          .confirmPasswordController.text) {
                                    Get.snackbar('Thông báo',
                                        'Nhập lại mật khẩu không chính xác');
                                  } else {
                                    controller.register(
                                        email: controller.emailController.text,
                                        phone: controller.phoneController.text,
                                        fullName:
                                            controller.fullNameController.text,
                                        passWord:
                                            controller.passWordController.text,
                                        confirmPassword: controller
                                            .confirmPasswordController.text);
                                  }
                                },
                          child: controller.isLoading.value == false
                              ? CustomText(
                                  text: 'Đăng ký',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )
                              : SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator())),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Đã có tài khoản? ',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: 'Đăng nhập',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.offNamed('/login');
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
