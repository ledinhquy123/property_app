import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostingSuccessPage extends StatelessWidget {
  const PostingSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: sColor,
      body: Padding(
        padding: EdgeInsets.all(kWidth * 0.05),
        child: SizedBox(
          height: kHeight,
          width: kWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Đã hoàn tất tạo tin!',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                width: kWidth,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(pColor)),
                    onPressed: () {
                      Get.toNamed('/checkout');
                    },
                    child: CustomText(
                      text: 'Thanh toán ngay',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                width: kWidth,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {
                      Get.toNamed('/posts');
                    },
                    child: CustomText(
                      text: 'Xem danh sách tin',
                      fontWeight: FontWeight.bold,
                      color: sColor,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
