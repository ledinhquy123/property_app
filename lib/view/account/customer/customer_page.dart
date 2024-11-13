import 'package:app_bds/widget/custom_text.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../unit.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Khách hàng',
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: sColor,
        onPressed: () {
          Get.bottomSheet(
            Container(
              height: kHeight * 0.5,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Tạo khách hàng',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: sColor,
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
                            hintText: 'Họ và tên',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            hintText: 'Số điện thoại',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            prefixIcon: Icon(
                              Icons.call,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Nhu cầu: Mua nhà khu vực nào ...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(bottom: 58),
                          child: Icon(
                            Icons.info,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: CustomText(
                              text: 'Tạo khách hàng',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
            isScrollControlled: true,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Tình trạng:',
                    fontWeight: FontWeight.bold,
                    color: sColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: kHeight * 0.05,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            hintText: 'Tất cả',
                            hintStyle: TextStyle(
                              fontSize: 14,
                            ),
                            suffixIcon: Icon(Icons.arrow_drop_down)),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    decoration: BoxDecoration(
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
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Trần Quốc Khánh',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: '0338627333',
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text:
                                          'Nhu cầu: Mua nhà khu vực Q1, 2 tầng, 1 mặt tiền',
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: PopupMenuButton<String>(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.more_vert),
                                    onSelected: (a) {
                                      if (a == Constants.FirstItem) {
                                        Get.bottomSheet(
                                          Container(
                                            height: kHeight * 0.5,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.all(kWidth * 0.05),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomText(
                                                    text: 'Sửa khách hàng',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                    color: sColor,
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  SizedBox(
                                                    height: kHeight * 0.06,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.text,
                                                      decoration:
                                                          InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(15),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10.0)),
                                                              ),
                                                              hintText:
                                                                  'Họ và tên',
                                                              hintStyle:
                                                                  TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                              prefixIcon: Icon(
                                                                Icons.person,
                                                              )),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  SizedBox(
                                                    height: kHeight * 0.06,
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      decoration:
                                                          const InputDecoration(
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .all(15),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10.0)),
                                                              ),
                                                              hintText:
                                                                  'Số điện thoại',
                                                              hintStyle:
                                                                  TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                              prefixIcon: Icon(
                                                                Icons.call,
                                                              )),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFormField(
                                                    keyboardType:
                                                        TextInputType.text,
                                                    maxLines: 4,
                                                    decoration:
                                                        const InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(15),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10.0)),
                                                      ),
                                                      hintText:
                                                          'Nhu cầu: Mua nhà khu vực nào ...',
                                                      hintStyle: TextStyle(
                                                        fontSize: 14,
                                                      ),
                                                      prefixIcon: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 58),
                                                        child: Icon(
                                                          Icons.info,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  SizedBox(
                                                    height: kHeight * 0.06,
                                                    width: double.infinity,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Center(
                                                          child: CustomText(
                                                            text:
                                                                'Lưu thông tin',
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          isScrollControlled: true,
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        );
                                      } else if (a == Constants.SecondItem) {
                                        AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.infoReverse,
                                          title: 'Xóa khách hàng',
                                          desc:
                                              'Bạn có muốn xóa khách hàng này?',
                                          btnCancelOnPress: () {},
                                          btnOkOnPress: () {},
                                        ).show();
                                      }
                                    },
                                    itemBuilder: (BuildContext context) {
                                      return Constants.choices
                                          .map((String choice) {
                                        return PopupMenuItem<String>(
                                          value: choice,
                                          child: Row(
                                            children: [
                                              choice == 'Chỉnh sửa'
                                                  ? Icon(
                                                      Icons.edit_calendar_sharp,
                                                      size: 18,
                                                    )
                                                  : Icon(
                                                      Icons.delete_outlined,
                                                      size: 18,
                                                    ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              CustomText(
                                                text: choice,
                                                fontSize: 13,
                                              ),
                                            ],
                                          ),
                                        );
                                      }).toList();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: kWidth,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CustomText(
                              text: 'Đã thực hiện cuộc gọi',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Constants {
  static const String FirstItem = 'Chỉnh sửa';
  static const String SecondItem = 'Xóa';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
  ];
}
