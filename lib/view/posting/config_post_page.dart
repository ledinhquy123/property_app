import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigPostPage extends StatelessWidget {
  const ConfigPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Cấu hình tin đăng',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: Container(
        height: kHeight * 0.12,
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Tổng tiền',
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: '770.000 đ',
                      fontSize: 17,
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: kWidth * 0.4,
                height: kHeight * 0.05,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/postingSuccess');
                    },
                    child: CustomText(
                      text: 'Tạo tin',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Chọn loại tin đăng',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              SizedBox(
                height: 15,
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Tin Thường',
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: '2.000đ/ngày',
                              color: sColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: 'Đứng cuối kết quả tìm kiếm',
                              fontSize: 14,
                            ),
                          ],
                        ),
                        CustomText(
                          text: 'Đang chọn',
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffCE9F34),
                      Color(0xffFFDF93),
                      Color(0xffEABD4D),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 2, right: 2, bottom: 15, top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Tin VIP',
                                fontWeight: FontWeight.bold,
                                color: tColor,
                                fontSize: 17,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: '110.000đ/ngày',
                                color: sColor,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                text: 'Đứng đầu kết quả tìm kiếm',
                                fontSize: 14,
                              ),
                            ],
                          ),
                          CustomText(
                            text: 'Đang chọn',
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Chọn thời gian đăng tin',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Số ngày đăng',
                color: sColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Số ngày đăng tối thiểu là 7',
                      prefixIcon: Icon(Icons.timer)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Ngày bắt đầu',
                color: sColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  readOnly: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      hintText: 'Chọn ngày bắt đầu',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.date_range),
                        onPressed: () {
                          AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.question,
                                  title: 'Ngày bắt đầu',
                                  desc: 'Chọn ngày bắt đầu',
                                  body: SizedBox(
                                    height: kHeight * 0.2,
                                    child: CupertinoDatePicker(
                                      initialDateTime: DateTime.now(),
                                      mode: CupertinoDatePickerMode.date,
                                      use24hFormat: true,
                                      onDateTimeChanged: (DateTime newDate) {},
                                    ),
                                  ),
                                  btnOkOnPress: () {},
                                  btnCancelOnPress: () {})
                              .show();
                        },
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Thanh toán',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Loại tin',
                  ),
                  CustomText(
                    text: 'Tin VIP',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Divider(
                height: 25,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Đơn giá/ngày',
                  ),
                  CustomText(
                    text: '110.000 đ',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Divider(
                height: 25,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Thời gian đăng tin',
                  ),
                  CustomText(
                    text: '7 ngày',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Divider(
                height: 25,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Phí đăng tin',
                  ),
                  CustomText(
                    text: '770.000 đ',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Divider(
                height: 25,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Tổng tiền',
                  ),
                  CustomText(
                    text: '770.000 đ',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
