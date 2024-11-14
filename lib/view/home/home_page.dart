import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: kWidth * 0.04),
          child: Image.asset(
            'assets/images/logosmall.png',
            width: 50,
          ),
        ),
        title: CustomText(
          text: 'VISION LAND HOME',
          fontWeight: FontWeight.bold,
          color: tColor,
          fontSize: 18,
        ),
        actions: [
          const Icon(
            Icons.search,
            color: sColor,
            size: 27,
          ),
          SizedBox(
            width: kWidth * 0.04,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(kWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSlideshow(
                indicatorColor: pColor,
                autoPlayInterval: 7000,
                isLoop: true,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Bất động sản mới đăng',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: 'Xem thêm',
                        fontWeight: FontWeight.w500,
                        color: tColor,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Icon(
                        Icons.arrow_right_alt_sharp,
                        size: 16,
                        color: tColor,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: kHeight * 0.38,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed('/productDetail');
                        },
                        child: Container(
                          width: kWidth * 0.52,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/img.png',
                                  width: double.infinity,
                                  height: kHeight * 0.12,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text:
                                          'The 5Way Phú Quốc. CĂN HỘ LIỀN KỀ MẶT BIỂN - ...',
                                      textOverflow: TextOverflow.ellipsis,
                                      maxLine: 2,
                                    ),
                                    const SizedBox(
                                      height: 8,
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
                                        ),
                                      )
                                    ]),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: pColor.withOpacity(0.2),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
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
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: CustomText(
                                                text: 'Từ 40m2 – 120m2',
                                                maxLine: 1,
                                                textOverflow:
                                                    TextOverflow.ellipsis,
                                                fontSize: 13,
                                                color: sColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      textOverflow: TextOverflow.ellipsis,
                                      maxLine: 3,
                                      text:
                                          'Dự án The 5Way Phú Quốc là một khu căn hộ đa dạng về mục đích sử dụng, được tọa lạc tại vị trí đắc địa Bãi Dài, Gành Dầu',
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: 'Bất động sản theo khu vực',
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
              const SizedBox(
                height: 15,
              ),
              StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(
                      5,
                      (index) => StaggeredGridTile.count(
                            crossAxisCellCount: index == 0 ? 2 : 1,
                            mainAxisCellCount: 1,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed('/product');
                              },
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/img.png',
                                      height: kWidth * 0.5,
                                      width: kWidth,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20, top: 20),
                                    child: Text(
                                      'Phú Quốc',
                                      style: TextStyle(
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(2.0, 2.0),
                                            blurRadius: 3.0,
                                            color: Colors.black,
                                          ),
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 8.0,
                                            color: Colors.grey,
                                          ),
                                        ],
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
