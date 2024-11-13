import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:app_bds/controller/account/Forgotpass_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class ForgotPass extends StatelessWidget {
  ForgotPass({Key? key}) : super(key: key);
  final controller = Get.put(ForgotPasswordController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: screenheight * 0.09,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Container(
            height:
                screenheight < 600 ? screenheight * 0.2 : screenheight * 0.09,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    CupertinoIcons.back,
                    size: screenWidth < 600 ? 30 : 40,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
          title: CustomText(
            text: "Quên mật khẩu",
            fontSize: screenWidth < 600 ? 16 : 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        body: Obx(
          () => Container(
              margin: EdgeInsets.only(top: screenWidth * 0.02),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.02),
                    child: CustomText(
                      text: 'Cập nhật lại mật khẩu',
                      color: sColor,
                      fontSize: screenWidth < 600 ? 28 : 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.02),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Nhập thông tin để cập nhật lại mật khẩu',
                              fontSize: screenWidth < 600 ? 14 : 18,
                              color: tColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    margin: EdgeInsets.only(top: screenWidth * 0.06),
                    height: screenWidth < 600 ? 50 : 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: controller.emailController,
                            style: TextStyle(
                              fontSize: screenWidth < 600 ? 16 : 20,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.envelope_fill),
                              hintText: 'Nhập email',
                              border: InputBorder.none,
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: screenWidth < 600
                            ? screenWidth * 0.05
                            : screenWidth * 0.03),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: controller.isLoading.value
                            ? null
                            : () {
                                if (controller.emailController.text.isEmpty) {
                                 AwesomeDialog(context: Get.context!,
                                 dialogType: DialogType.error,
                                 animType: AnimType.rightSlide,
                                 title: 'Thông báo',
                                 desc: 'Vui lòng nhập đầy đủ thông tin',
                                 btnOkOnPress: (){}
                                 
                                 ).show();
                                } else {
                                  controller.ForgotPassword(
                                      email: controller.emailController.text);
                                }
                              },
                        child: controller.isLoading.value == false
                            ? CustomText(
                                text: 'Gửi mã xác thực',
                                color: Colors.white,
                                fontSize: screenWidth < 600 ? 14 : 18,
                                fontWeight: FontWeight.w600,
                              )
                            : SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator()),
                        style: ElevatedButton.styleFrom(
                          primary: sColor,
                          minimumSize: Size(
                              screenWidth * 0.9, screenWidth < 600 ? 50 : 70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
