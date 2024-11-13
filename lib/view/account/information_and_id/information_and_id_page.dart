import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:app_bds/controller/account/infomation_controller.dart';

class InformationAndIdPage extends StatelessWidget {
  InformationAndIdPage({Key? key}) : super(key: key);
  final controller = Get.put(InfomationController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin cá nhân & định danh',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(
              () => Container(
                color: Colors.white,
                width: kWidth,
                child: controller.isLoading.value == false
                    ? Padding(
                        padding: EdgeInsets.all(kWidth * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Thông tin cá nhân',
                              color: sColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Họ và tên',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: controller.auth.value?.fullname,
                                )
                              ],
                            ),
                            Divider(
                              height: 30,
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Số điện thoại',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: controller.auth.value?.phone,
                                )
                              ],
                            ),
                            Divider(
                              height: 30,
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: 'Email',
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: controller.auth.value?.email,
                                )
                              ],
                            ),
                            Divider(
                              height: 30,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: kWidth,
                              height: kHeight * 0.06,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed('/updateInformation',
                                        arguments: controller.auth.value);
                                  },
                                  child: CustomText(
                                    text: 'Cập nhật thông tin cá nhân',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            )
                          ],
                        ),
                      )
                    : Container(
                        height: kHeight * 0.3,
                        width: kWidth * 0.3,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: kWidth *
                                0.01, // Điều chỉnh độ rộng của vòng tròn
                          ),
                        ),
                      ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              width: kWidth,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Thông tin định danh',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'CCCD',
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: '3203828191919',
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Ngày cấp',
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Nơi cấp',
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: 'Cục cảnh sát TPHCM',
                        )
                      ],
                    ),
                    Divider(
                      height: 30,
                      color: Colors.grey,
                    ),
                    CustomText(
                      text: 'Ảnh chụp CCCD 2 mặt',
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: kWidth * 0.43,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Icon(
                                    Icons.assignment_ind,
                                    size: 60,
                                    color: Color(0xff878787),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: 'Mặt trước CCCD',
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: kWidth * 0.43,
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Icon(
                                    Icons.assignment_ind,
                                    size: 60,
                                    color: Color(0xff878787),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: 'Mặt sau CCCD',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: kWidth,
                      height: kHeight * 0.06,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed('/identification');
                          },
                          child: CustomText(
                            text: 'Cập nhật thông tin định danh',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    )
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
