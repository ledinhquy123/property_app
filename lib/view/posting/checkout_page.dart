import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thanh toán tin đăng',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  text: 'Thông tin ngân hàng Vision Land',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Tên ngân hàng: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  TextSpan(
                      text: 'Vietcombank',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Tên người hưởng thụ: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  TextSpan(
                      text: 'TRẦN QUỐC KHÁNH',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Số tài khoản: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  TextSpan(
                      text: '797979797979',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Mã đăng tin: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  TextSpan(
                      text: '122319',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Hướng dẫn thanh toán',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: sColor,
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: '''Bước 1: truy cập app ngân hàng của bạn
Bước 2: nhập đầy đủ thông tin số tài khoản và tên ngân hàng trên 
Bước 3: nhập số tiền cần chuyển khoản 
Bước 4: nhập nội dung theo cú pháp
(họ và tên)_(số điện thoại)_(mã tin đăng)
Bước 5: kiểm tra lại thông tin chuyển khoản và số tiền chuyển khoản
Bước 6: chụp lại ảnh giao dịch và tải ảnh giao dịch lên hệ thống''',
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  width: kWidth,
                  height: kHeight * 0.05,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.cloud_upload_outlined),
                              SizedBox(
                                width: 8,
                              ),
                              CustomText(
                                text: 'Tải ảnh lên',
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.055,
                width: kWidth,
                child: ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      text: 'Hoàn tất thanh toán',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
