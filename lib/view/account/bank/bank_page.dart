import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankPage extends StatelessWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin thanh toán',
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBar: Container(
        height: kHeight * 0.1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: SizedBox(
            width: kWidth,
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/addBank');
                },
                child: CustomText(
                  text: 'Thêm tài khoản',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
                text: 'Tài khoản hưởng thụ',
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              SizedBox(
                height: 25,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed('/bankDetail');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Vietcombank',
                            fontWeight: FontWeight.bold,
                            color: sColor,
                          ),
                          Row(
                            children: [
                              CustomText(
                                text: '*789',
                              ),
                              Icon(Icons.chevron_right)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 30,
                      color: Colors.grey,
                    );
                  },
                  itemCount: 15)
            ],
          ),
        ),
      ),
    );
  }
}
