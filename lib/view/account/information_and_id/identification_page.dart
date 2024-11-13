import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';

class IdentificationPage extends StatelessWidget {
  const IdentificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin định danh',
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
                text: 'Ảnh chụp CCCD 2 mặt',
                fontWeight: FontWeight.bold,
                color: sColor,
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: kWidth * 0.43,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Icon(
                              Icons.assignment_ind,
                              size: 60,
                              color: Color(0xff878787),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'Mặt trước CCCD',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: kWidth * 0.43,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Icon(
                              Icons.assignment_ind,
                              size: 60,
                              color: Color(0xff878787),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: 'Mặt sau CCCD',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Lưu ý khi chụp: ',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        'Vui lòng chụp nét và rõ chữ, không bị chói sáng, nhòe hình. Kiểm tra lại hình sau khi chụp.',
                    style: TextStyle(color: Colors.black87)),
              ])),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Số CCCD',
                      prefixIcon: Icon(Icons.assignment_ind_outlined)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Ngày cấp',
                      prefixIcon: Icon(Icons.calendar_month)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: kHeight * 0.06,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Nơi câp',
                      prefixIcon: Icon(Icons.location_on_outlined)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: kWidth,
                height: kHeight * 0.06,
                child: ElevatedButton(
                    onPressed: () {},
                    child: CustomText(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      text: 'Lưu cập nhật',
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
