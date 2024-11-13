import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InferiorPage extends StatelessWidget {
  const InferiorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: CustomText(
          text: 'Thông tin cấp dưới',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(kWidth * 0.05),
            child: ListView.separated(
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
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Icon(
                                        Icons.person,
                                        size: 30,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Trần Quốc Khánh',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: 'Đã tham gia thành công',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: 'Thành viên từ 12/12/2023',
                                        fontSize: 13,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              InkWell(
                                  onTap: () {
                                    Get.toNamed('inferiorDetail');
                                  },
                                  child: Icon(Icons.chevron_right))
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: sColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_fire_department,
                                  color: pColor,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CustomText(
                                  text: 'Đã tham gia 3 dự án',
                                  fontWeight: FontWeight.bold,
                                  color: pColor,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15,
                  );
                },
                itemCount: 5)),
      ),
    );
  }
}
