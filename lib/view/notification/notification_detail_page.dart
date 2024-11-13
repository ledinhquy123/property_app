import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Chi tiết thông báo',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Dự án mới từ hệ thống',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: sColor,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: DateFormat('HH:mm, dd/MM/yyyy').format(DateTime.now()),
                fontSize: 13.5,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    'Dự án The 5Way Phú Quốc là một khu căn hộ đa dạng về mục đích sử dụng, được tọa lạc tại vị trí đắc địa Bãi Dài, Gành Dầu, Phú Quốc',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
