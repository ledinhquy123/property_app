import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';

class BankDetailPage extends StatelessWidget {
  const BankDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin tài khoản',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Họ và tên chủ tài khoản',
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Số tài khoản',
                      prefixIcon: Icon(Icons.credit_card_outlined)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Ngân hàng',
                      prefixIcon: Icon(Icons.assured_workload_outlined)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Chi nhánh',
                      prefixIcon: Icon(Icons.location_on_rounded)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: kWidth,
                height: kHeight * 0.058,
                child: ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      text: 'Lưu thay đổi',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: kWidth,
                height: kHeight * 0.058,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffB80000))),
                    onPressed: () {},
                    child: CustomText(
                      text: 'Xóa tài khoản',
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
