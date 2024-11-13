import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';

import '../../unit.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black26,
            child: IconButton(
              icon: Icon(
                Icons.insert_link,
                color: Colors.white,
              ),
              onPressed: () {
                Get.dialog(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Material(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Image.asset(
                                    'assets/images/logo1.png',
                                    height: kHeight * 0.06,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(height: 15),
                                  CustomText(
                                    text:
                                        'Hợp tác cùng VISION LAND để nhận được các khoảng thu nhập & hoa hồng hấp dẫn',
                                  ),
                                  const SizedBox(height: 20),
                                  //Buttons

                                  SizedBox(
                                    width: double.infinity,
                                    height: kHeight * 0.06,
                                    child: ElevatedButton(
                                      child: CustomText(
                                        text: 'Tham gia giới thiệu dự án này',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(0, 45),
                                        primary: pColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onPressed: () {
                                        Get.toNamed('/linkRedeem');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            width: 10,
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: kHeight * 0.1,
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.bottomSheet(
                    SizedBox(
                      height: kHeight * 0.3,
                      child: Padding(
                        padding: EdgeInsets.all(kWidth * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Lựa chọn khác',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: sColor,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: sColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/zalo.png',
                                      width: 30,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CustomText(
                                  text: 'Chat qua Zalo',
                                  color: sColor,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                                Get.bottomSheet(
                                  Container(
                                    height: kHeight * 0.5,
                                    child: Padding(
                                      padding: EdgeInsets.all(kWidth * 0.05),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: 'Yêu cầu liên hệ lại',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            color: sColor,
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: kHeight * 0.06,
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  hintText: 'Họ và tên',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.person,
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          SizedBox(
                                            height: kHeight * 0.06,
                                            child: TextFormField(
                                              keyboardType: TextInputType.phone,
                                              decoration: const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(15),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  hintText: 'Số điện thoại',
                                                  hintStyle: TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.call,
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextFormField(
                                            keyboardType: TextInputType.text,
                                            maxLines: 4,
                                            decoration: const InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(15),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                              ),
                                              hintText: 'Thông tin tư vấn',
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                              ),
                                              prefixIcon: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 58),
                                                child: Icon(
                                                  Icons.info,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: kHeight * 0.06,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                child: Center(
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomText(
                                                        text: 'Gửi',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Icon(
                                                        Icons.send,
                                                        size: 20,
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  isScrollControlled: true,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: sColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.phone_callback_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  CustomText(
                                    text: 'Yêu cầu liên hệ lại',
                                    color: sColor,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  );
                },
                child: Container(
                    height: kHeight * 0.06,
                    width: kHeight * 0.07,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.more_horiz,
                        color: sColor,
                      ),
                    )),
              ),
              SizedBox(
                height: kHeight * 0.06,
                width: kWidth * 0.7,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 7,
                        ),
                        CustomText(
                          text: 'Liên hệ ngay',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlideshow(
              indicatorColor: pColor,
              autoPlayInterval: 7000,
              isLoop: true,
              height: kHeight * 0.25,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/prd.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(kWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text:
                        'THE 5WAY PHÚ QUỐC, CĂN HỘ LIỀN KỀ MẶT BIỂN - ĐẬM CHẤT SỐNG LIFESTYLE 5-IN-1',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: sColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text:
                        'Grand World Phú Quốc đường DT45, Bãi Dài, Gành Dầu, Phú Quốc, Kiên Giang. ',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.paid,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Mức giá: Từ 1,5 tỷ',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.zoom_out_map,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Diện tích: Từ 40m2 – 120m2 ',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.home_work,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Chủ đầu tư: Vinhomes ',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.layers,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Loại hình: Căn hộ, Shop house ',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'Thông tin mô tả',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: sColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomText(
                    text:
                        '''-Dự án The 5Way Phú Quốc là một khu căn hộ đa dạng về mục đích sử dụng, được tọa lạc tại vị trí đắc địa Bãi Dài, Gành Dầu, Phú Quốc, do chủ đầu tư Vinhomes đứng ra phát triển. Với diện tích rộng gần 100ha, dự án nằm trong một siêu quần thể du lịch, nghỉ dưỡng và vui chơi giải trí hàng đầu Đông Nam Á. Hãy cùng xem video khi sống tại đây, cư dân sẽ được thừa hưởng những tiện ích đặc quyền gì?. 

-Tọa lạc tại vị trí tuyệt đẹp, dự án hội tụ nhiều yếu tố hấp dẫn, bao gồm không gian căn hộ tiện nghi dành cho cả việc ở lẫn nghỉ dưỡng. Các tòa căn hộ The 5Way Phú Quốc cao 8 tầng, với ban công sử dụng kính tràn panorama, mang lại tầm nhìn rộng mở và sự thảm mát từ gió tự nhiên. Đây hứa hẹn sẽ là một không gian sống thoải mái và đẳng cấp cho cư dân.''',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'Tiện ích trong khu vực',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: sColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CustomText(text: '''Trường học Vinschool.
Bệnh viện Vinmec.
Khu vui chơi giải trí Vinwonders.
Vinpearl Safari Phú Quốc.
Tổ hợp Casino Corona.
Khách sạn Vinpearl Phú Quốc.
Vinpearl Golf Phú Quốc.
Biển Bãi Dài được vinh danh 1 trong 10 bãi biển đẹp nhất thế giới.'''),
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    text: 'Thông tin khác',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: sColor,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.business_center_sharp,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Thi công xây dựng: Coteccons',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.scale,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Quy mô: 85ha',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.pie_chart,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Mật độ xây dựng: 19%',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.maps_home_work,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Số lượng: 10 tòa căn hộ',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.height,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CustomText(
                        text: 'Chiều cao tầng: 8 tầng',
                        fontWeight: FontWeight.w600,
                        color: sColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomText(
                          text: 'Bàn giao: Căn hộ bàn giao hoàn thiện nội thất',
                          fontWeight: FontWeight.w600,
                          color: sColor,
                          textOverflow: TextOverflow.ellipsis,
                          maxLine: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: sColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: CustomText(
                          text: 'Thời gian triển khai: Quý 3/2023',
                          fontWeight: FontWeight.w600,
                          color: sColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
