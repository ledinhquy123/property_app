import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../unit.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: kWidth * 0.05, right: kWidth * 0.05),
            child: Column(
              children: [
                SizedBox(
                  height: kHeight * 0.05,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Tìm kiếm bất động sản',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: kHeight * 0.05,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              hintText: 'Chọn khu vực',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                              suffixIcon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: kHeight * 0.05,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              hintText: 'Chọn hình thức',
                              hintStyle: TextStyle(
                                fontSize: 14,
                              ),
                              suffixIcon: Icon(Icons.arrow_drop_down)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, index) {
              return Container(
                width: kWidth,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffCE9F34),
                        Color(0xffFFDF93),
                        Color(0xffEABD4D),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: kWidth * 0.04, bottom: kWidth * 0.04),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/product.png',
                              width: double.infinity,
                              height: kHeight * 0.27,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          CustomText(
                            text:
                                'THE 5WAY PHÚ QUỐC, CĂN HỘ LIỀN KỀ MẶT BIỂN - ĐẬM CHẤT SỐNG LIFESTYLE 5-IN-1'
                                    .toUpperCase(),
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            maxLine: 2,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: pColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CustomText(
                                    text: 'Từ 1.5 tỷ',
                                    fontSize: 13,
                                    color: tColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: sColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CustomText(
                                      text: 'Từ 40m2 – 120m2',
                                      maxLine: 1,
                                      textOverflow: TextOverflow.ellipsis,
                                      fontSize: 13,
                                      color: sColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: sColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: CustomText(
                                        text: 'Vinhomes',
                                        maxLine: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                        color: sColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: sColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: CustomText(
                                        text: 'Căn hộ, House',
                                        maxLine: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                        fontSize: 13,
                                        color: sColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(children: [
                            const Icon(
                              Icons.location_on,
                              color: sColor,
                              size: 16,
                            ),
                            Expanded(
                              child: CustomText(
                                text: 'Phú Quốc, Kiên Giang',
                                fontSize: 13,
                                textOverflow: TextOverflow.ellipsis,
                                maxLine: 1,
                                color: sColor,
                              ),
                            )
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: sColor,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Icon(
                                        Icons.person_outline,
                                        color: pColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Trần Quốc Khánh',
                                        fontWeight: FontWeight.w600,
                                        color: sColor,
                                      ),
                                      CustomText(
                                        text: 'Đăng hôm nay',
                                        color: Colors.black45,
                                        fontSize: 13,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: kWidth * 0.38,
                                height: kHeight * 0.04,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Get.toNamed('/productDetail');
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomText(
                                          text: 'Xem chi tiết',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.arrow_right_alt_sharp,
                                          size: 15,
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: 5),
      )),
    );
  }
}
