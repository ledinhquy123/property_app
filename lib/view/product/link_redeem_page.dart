import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';

class LinkRedeemPage extends StatelessWidget {
  const LinkRedeemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Link Redeem',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: Container(
        height: kHeight * 0.1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: SizedBox(
            height: kHeight * 0.06,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CustomText(
                      text: 'Chia sẻ link',
                      color: Colors.grey,
                    )
                  ],
                )),
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
                text: 'Link giới thiệu',
                fontWeight: FontWeight.bold,
                color: sColor,
                fontSize: 17,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    'Bạn có thể sử dụng link này để chia sẻ, giới thiệu bản tin này cho người thân, bạn bè,...',
              ),
              Divider(
                height: 30,
                color: Colors.grey.withOpacity(0.5),
              ),
              CustomText(
                text: 'Link của bạn',
                fontWeight: FontWeight.bold,
                color: sColor,
                fontSize: 17,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomText(
                      text: 'https://shorten.asia/Abcdxyz123',
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.copy)
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey.withOpacity(0.5),
              ),
              CustomText(
                text: 'Chính sách hoa hồng',
                fontWeight: FontWeight.bold,
                color: sColor,
                fontSize: 17,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    '''-Từ ngày 01/07/2023 mức hoa hồng áp dụng cho mỗi đơn hàng được bay thành công là 5% (chưa bao gồm VAT)

-Trạng thái đơn hàng sẽ được cập nhật hằng tuần''',
              ),
              Divider(
                height: 30,
                color: Colors.grey.withOpacity(0.5),
              ),
              CustomText(
                text: 'Điều kiện ghi nhận',
                fontWeight: FontWeight.bold,
                color: sColor,
                fontSize: 17,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text:
                    '''- Các bước thực hiện: (1) Khách nhấp vào link aff của MG -> (2) Khách hàng tiến hành trao đổi với admin -> (3) Khách tiến hành mua dự án thành công. ''',
              ),
              Divider(
                height: 30,
                color: Colors.grey.withOpacity(0.5),
              ),
              CustomText(
                text: 'Lưu ý khác',
                fontWeight: FontWeight.bold,
                color: sColor,
                fontSize: 17,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: '''-Nghiêm cấm hành vi spam link trên các nền tảng

-Nghiêm cấm sử dụng link cho các mục đích khác ảnh hưởng đến chế độ, pháp luật, nhà nước,...

-Nếu phát hiện vi phạm MG sẽ bị cấm hoạt động và hủy hoa hồng ngay lập tức ''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
