import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../widget/status_box.dart';

class ProjectAndCommissionPage extends StatelessWidget {
  ProjectAndCommissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(
            text: 'Dự án & hoa hồng',
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(
            dividerColor: sColor,
            indicatorColor: sColor,
            labelColor: sColor,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: <Widget>[
              Tab(
                text: 'Dự án',
              ),
              Tab(
                text: 'Hoa hồng',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
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
                    SizedBox(
                      height: 15,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(
                                      0, 1), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: 'Agora City',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                      index % 2 == 1
                                          ? StatusBox(
                                              title: 'Đang tham gia',
                                              color: Colors.green,
                                            )
                                          : index % 3 == 1
                                              ? StatusBox(
                                                  title: 'Đã bán hết',
                                                  color: sColor,
                                                )
                                              : StatusBox(
                                                  title: 'Đã hủy',
                                                  color: rColor,
                                                )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: 'Huyện Thủ Thừa, Long An',
                                    color: Colors.black38,
                                  ),
                                  Divider(
                                    height: 40,
                                    color: Colors.grey,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      DefaultTabController.of(context)
                                          .animateTo(1);
                                    },
                                    child: Center(
                                      child: CustomText(
                                        text: 'Xem thông tin chi tiết',
                                        color: sColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: 10)
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(kWidth * 0.05),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Số lượng dự án tham gia',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: '10',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Số lượng cấp dưới',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: '3',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Hoa hồng tích lũy',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: NumberFormat.currency(
                                              symbol: 'đ', locale: 'vi')
                                          .format(50000000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Hoa hồng gián tiếp',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: NumberFormat.currency(
                                              symbol: 'đ', locale: 'vi')
                                          .format(10000000),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/bn.png',
                    height: kHeight * 0.17,
                    width: kWidth,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(kWidth * 0.05),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Dự án:',
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        hintText: 'Tất cả',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                        suffixIcon:
                                            Icon(Icons.arrow_drop_down)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Số lượng đăng ký',
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: '30',
                                fontWeight: FontWeight.bold,
                                color: sColor,
                                fontSize: 17,
                              ),
                            ],
                          ),
                          Divider(
                            height: 30,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Đang duyệt',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: '12',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Đã duyệt',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: '20',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Không duyệt',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: '10',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: sColor,
                                    ),
                                  ],
                                ),
                              ),
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
                                text: 'Hoa hồng phát sinh',
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: NumberFormat.currency(
                                        symbol: 'đ', locale: 'vi')
                                    .format(10000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: sColor,
                              ),
                            ],
                          ),
                          Divider(
                            height: 30,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Đã thanh toán',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: NumberFormat.currency(
                                            symbol: 'đ', locale: 'vi')
                                        .format(50000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Đang chờ thanh toán',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: NumberFormat.currency(
                                            symbol: 'đ', locale: 'vi')
                                        .format(10000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: rColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(kWidth * 0.05),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Cấp dưới:',
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        hintText: 'Tất cả',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        ),
                                        suffixIcon:
                                            Icon(Icons.arrow_drop_down)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Hoa hồng gián tiếp',
                                fontWeight: FontWeight.bold,
                              ),
                              CustomText(
                                text: NumberFormat.currency(
                                        symbol: 'đ', locale: 'vi')
                                    .format(10000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: sColor,
                              ),
                            ],
                          ),
                          Divider(
                            height: 30,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Đã thanh toán',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: NumberFormat.currency(
                                            symbol: 'đ', locale: 'vi')
                                        .format(50000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: 'Đang chờ thanh toán',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: NumberFormat.currency(
                                            symbol: 'đ', locale: 'vi')
                                        .format(10000000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: rColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
