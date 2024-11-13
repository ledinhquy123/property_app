import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InferiorDetailPage extends StatelessWidget {
  const InferiorDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: CustomText(
          text: 'Thông tin cấp dưới',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: kWidth,
              color: sColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomText(
                      text: 'Trần Quốc Khánh',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomText(
                      text: 'Thành viên từ 01/01/2024',
                      color: Colors.white,
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
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CustomText(
                    text: 'Đã tham gia thành công',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(kWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Dự án từ cấp dưới',
                    fontWeight: FontWeight.bold,
                    color: sColor,
                    fontSize: 17,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Agora City',
                                  fontWeight: FontWeight.bold,
                                  color: sColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: 'Tổng số lượt đăng ký: 30',
                                  fontWeight: FontWeight.bold,
                                ),
                                Divider(
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Đang duyệt',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        CustomText(
                                          text: '10',
                                          fontWeight: FontWeight.bold,
                                          color: sColor,
                                        ),
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Đã duyệt',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        CustomText(
                                          text: '10',
                                          fontWeight: FontWeight.bold,
                                          color: sColor,
                                        ),
                                      ],
                                    )),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Không duyệt',
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        CustomText(
                                          text: '10',
                                          fontWeight: FontWeight.bold,
                                          color: sColor,
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                Divider(
                                  height: 30,
                                  color: Colors.grey,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: 'Hoa hồng gián tiếp: ',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: NumberFormat.currency(
                                              locale: 'vi', symbol: 'đ')
                                          .format(11000000),
                                      fontWeight: FontWeight.bold,
                                      color: sColor,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: 'Chờ thanh toán: ',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: NumberFormat.currency(
                                              locale: 'vi', symbol: 'đ')
                                          .format(5000000),
                                      fontWeight: FontWeight.bold,
                                      color: rColor,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    CustomText(
                                      text: 'Đã thanh toán: ',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: NumberFormat.currency(
                                              locale: 'vi', symbol: 'đ')
                                          .format(6000000),
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 15,
                        );
                      },
                      itemCount: 5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
