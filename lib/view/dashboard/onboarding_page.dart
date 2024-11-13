import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_bds/controller/dashboard/boarding.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);
  final controller = Get.put(OnboaController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(
        () => Padding(
            padding: EdgeInsets.all(kWidth * 0.05),
            child: controller.isloading.value == false
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              width: kWidth * 0.6,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: kWidth,
                              height: kHeight * 0.06,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.offAllNamed('/dashboardPage');
                                  },
                                  child: CustomText(
                                    text: 'Trải nghiệm ngay',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: kWidth,
                              height: kHeight * 0.06,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: sColor, width: 2))),
                                  ),
                                  onPressed: () {
                                    Get.offNamed('/register');
                                  },
                                  child: CustomText(
                                    text: 'Đăng ký tài khoản',
                                    color: sColor,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(kWidth * 0.05),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Đã có tài khoản ',
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
                  )
                : CircularProgressIndicator()),
      ),
    );
  }
}
