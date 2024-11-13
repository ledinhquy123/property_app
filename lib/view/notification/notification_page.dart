import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thông báo',
          fontWeight: FontWeight.bold,
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
                    text: '1 thông báo mới',
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: 'Đánh dấu đã đọc',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed('/notificationDetail');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.notifications_active_outlined,
                                  size: 25,
                                  color: sColor,
                                ),
                                CustomText(
                                  text: DateFormat('HH:mm, dd/MM/yyyy')
                                      .format(DateTime.now()),
                                  fontSize: 13.5,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text: 'Dự án mới từ hệ thống',
                              fontWeight: FontWeight.bold,
                              color: sColor,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              text:
                                  'Dự án The 5Way Phú Quốc là một khu căn hộ đa dạng về mục đích sử dụng, được tọa lạc tại vị trí đắc địa Bãi Dài, Gành Dầu, Phú Quốc',
                              textOverflow: TextOverflow.ellipsis,
                              maxLine: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
