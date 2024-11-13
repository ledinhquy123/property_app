import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:app_bds/controller/account/update_infomationAndId_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class UpdateInformationPage extends StatelessWidget {
  UpdateInformationPage({Key? key}) : super(key: key);
  final controller = Get.put(UpdateinforController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin cá nhân',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: sColor,
                        child: Icon(
                          Icons.person,
                          color: pColor,
                        ),
                      ),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: kHeight * 0.06,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: controller.fullnameController
                      ..text = controller.data.fullname.toString(),
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        labelText: 'Họ và tên',
                        prefixIcon: Icon(Icons.person)),
                  ),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                // SizedBox(
                //   height: kHeight * 0.06,
                //   child: TextFormField(
                //     keyboardType: TextInputType.phone,
                //     controller: controller.phoneController
                //       ..text = controller.data.phone.toString(),
                //     decoration: const InputDecoration(
                //         contentPadding: EdgeInsets.all(15),
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //         ),
                //         labelText: 'Số điện thoại',
                //         prefixIcon: Icon(Icons.call)),
                //   ),
                // ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: kWidth * 0.9,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: kWidth < 600 ? 50 : 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: controller.emailController
                                    ..text = controller.data.email.toString(),
                                  style: TextStyle(
                                      fontSize: kWidth < 600 ? 16 : 20),
                                  decoration: InputDecoration(
                                    prefixIcon:
                                        Icon(CupertinoIcons.envelope_fill),
                                    hintText: 'Email',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ]),
                        )
                      ]),
                ),

                // child: TextFormField(
                //   keyboardType: TextInputType.text,
                //   controller: controller.emailController
                //     ..text = controller.data.email.toString(),
                //   decoration: const InputDecoration(
                //       contentPadding: EdgeInsets.all(15),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                //       ),
                //       labelText: 'Email',
                //       prefixIcon: Icon(Icons.email)),
                // ),

                SizedBox(
                  height: 15,
                ),
                Container(
                    height: kWidth < 600 ? 50 : 70,
                    width: kWidth * 0.9,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DropdownButton2(
                            hint: Container(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: (() {
                                        switch (controller.ischeck.value) {
                                          case '1':
                                            return Container(
                                              child: Row(children: [
                                                Icon(Icons.male),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomText(text: 'Nam')
                                              ]),
                                            );
                                          case '2':
                                            return Container(
                                              child: Row(children: [
                                                Icon(Icons.female),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomText(text: 'Nữ'),
                                              ]),
                                            );
                                          case '3':
                                            return Container(
                                              child: Row(children: [
                                                Icon(Icons.person),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomText(text: 'Khác')
                                              ]),
                                            );
                                          default:
                                            return Container(
                                              child: Row(children: [
                                                Icon(Icons.person),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomText(
                                                    text: controller.data.gender
                                                                .toString() ==
                                                            '1'
                                                        ? 'Nam'
                                                        : controller.data.gender
                                                                    .toString() ==
                                                                '2'
                                                            ? 'Nữ'
                                                            : 'Khác')
                                              ]),
                                            );
                                        }
                                      })(),
                                    )
                                  ]),
                            ),
                            buttonStyleData: ButtonStyleData(
                              height: 50,
                              width: kWidth * 0.9,
                              padding: EdgeInsets.only(
                                  left: kWidth * 0.03, right: kWidth * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                            underline: Container(height: 0),
                            items: [
                              DropdownMenuItem(
                                child: Row(children: [
                                  Icon(Icons.male),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomText(text: 'Nam')
                                ]),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Row(children: [
                                  Icon(Icons.female),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomText(text: 'Nữ')
                                ]),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Row(children: [
                                  Icon(Icons.person),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomText(text: 'Khác')
                                ]),
                                value: 3,
                              )
                            ],
                            onChanged: (value) {
                              controller.ischeck.value = value.toString();
                              controller.GenderController.value =
                                  value.toString();
                            })
                      ],
                    )),

                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: kHeight * 0.06,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.locationController
                      ..text = controller.data.address.toString() == 'null'
                          ? ''
                          : controller.data.address.toString(),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Địa chỉ',
                      prefixIcon: Icon(CupertinoIcons.location_fill),
                    ),
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
                                  if (controller
                                          .fullnameController.text.isEmpty ||
                                      controller.emailController.text.isEmpty ||
                                      controller
                                          .locationController.text.isEmpty) {
                                    AwesomeDialog(
                                      context: Get.context!,
                                      dialogType: DialogType.error,
                                      title: 'Thông báo',
                                      desc: 'Vui lòng nhập đầy đủ thông tin',
                                      animType: AnimType.rightSlide,
                                    ).show();
                                  } else if (controller
                                      .GenderController.isEmpty) {
                                    controller.updateInfo(
                                      email: controller.emailController.text,
                                      fullname:
                                          controller.fullnameController.text,
                                      location:
                                          controller.locationController.text,
                                      gender: controller.data.gender.toString(),
                                    );
                                  } else {
                                    controller.updateInfo(
                                      email: controller.emailController.text,
                                      fullname:
                                          controller.fullnameController.text,
                                      location:
                                          controller.locationController.text,
                                      gender: controller.GenderController.value,
                                    );
                                  }
                                },
                          child: controller.isLoading.value == false
                              ? CustomText(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  text: 'Lưu cập nhật',
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
      ),
    );
  }
}
