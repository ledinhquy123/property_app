import 'package:app_bds/widget/custom_text.dart';
import 'package:app_bds/widget/status_box.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../unit.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Tin đăng của tôi',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(kWidth * 0.05),
              child: Column(
                children: [
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
                          hintText: 'Tìm kiếm tin đăng',
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: kWidth,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffCE9F34),
                            Color(0xffFFDF93),
                            Color(0xffEABD4D),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: kWidth * 0.04, bottom: kWidth * 0.04),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/images/img.png',
                                            width: double.infinity,
                                            height: kWidth * 0.2,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        StatusBox(
                                          title: 'Đang chờ duyệt',
                                          color: tColor,
                                        )
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text:
                                                'THE 5WAY PHÚ QUỐC, CĂN HỘ LIỀN KỀ MẶT BIỂN - ĐẬM CHẤT SỐNG LIFESTYLE 5-IN-1'
                                                    .toUpperCase(),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            maxLine: 3,
                                            textOverflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color:
                                                        pColor.withOpacity(0.2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: CustomText(
                                                    text: 'Từ 1.5 tỷ',
                                                    fontSize: 13,
                                                    color: tColor,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: sColor
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: CustomText(
                                                      text: 'Từ 40m2 – 120m2',
                                                      maxLine: 1,
                                                      textOverflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: 13,
                                                      color: sColor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: sColor
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Center(
                                                      child: CustomText(
                                                        text: 'Căn hộ, House',
                                                        maxLine: 1,
                                                        textOverflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                        fontSize: 13,
                                                        color: sColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomText(
                                            text: 'Phú Quốc, Kiên Giang',
                                            fontSize: 13,
                                            textOverflow: TextOverflow.ellipsis,
                                            maxLine: 1,
                                            color: sColor,
                                          ),
                                        ],
                                      )),
                                  Flexible(
                                    flex: 1,
                                    child: PopupMenuButton<String>(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.more_vert),
                                      onSelected: (a) {
                                        if (a == Constants.FirstItem) {
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
                                                        Icons
                                                            .edit_calendar_sharp,
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
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: 'Mã tin',
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: '1231112',
                                        fontSize: 14,
                                      )
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      CustomText(
                                        text: 'Ngày đăng',
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: '12/01/2024',
                                        fontSize: 14,
                                      )
                                    ],
                                  )),
                                  Expanded(
                                      child: Column(
                                    children: [
                                      CustomText(
                                        text: 'Ngày hết hạn',
                                        fontSize: 14,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: '12/01/2024',
                                        fontSize: 14,
                                      )
                                    ],
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: kWidth,
                                height: kHeight * 0.055,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Get.toNamed('/productDetail');
                                    },
                                    child: CustomText(
                                      text: 'Xem tin thực tế',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: 5),
          ],
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
