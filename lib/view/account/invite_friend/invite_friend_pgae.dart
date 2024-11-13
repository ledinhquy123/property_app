import 'package:flutter/material.dart';

import '../../../unit.dart';
import '../../../widget/custom_text.dart';

class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Giới thiệu bạn mới',
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
                text: 'Link giới thiệu bạn mới',
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
                    '''Với mỗi đơn hàng hay dự án mà cấp dưới của bạn chốt thành công, bạn cũng sẽ được hưởng % từ đơn hàng/dự án mà cấp dưới của bạn chốt''',
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
                    '''- Các bước thực hiện: (1) CTV mới nhấp vào link của bạn -> (2) CTV mới nhấn đăng ký và điền đầy đủ thông tin -> (3) CTV mới hoàn thiện thông tin cá nhân -> (4) CTV mới chốt thành công dự án đầu tiên. ''',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
