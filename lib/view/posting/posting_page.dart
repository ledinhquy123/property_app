import 'dart:io';

import 'package:app_bds/controller/posting/posting_controller.dart';
import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class PostingPage extends StatelessWidget {
  final controller = Get.put(PostingController());
  PostingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: CustomText(
          text: 'Đăng bài',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Get.toNamed('/configPost');
              },
              child: CustomText(
                text: 'Tiếp tục',
                color: sColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        text: 'Thông tin cơ bản',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Loại hình bất động sản *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: DropDownTextField(
                        listSpace: 10,
                        textFieldDecoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Chọn loại hình',
                        ),
                        listPadding: ListPadding(top: 10),
                        enableSearch: false,
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownList: const [
                          DropDownValueModel(name: 'Nhà đất', value: "value1"),
                          DropDownValueModel(name: 'Căn hộ', value: "value2"),
                        ],
                        listTextStyle: const TextStyle(color: sColor),
                        dropDownItemCount: 2,
                        onChanged: (val) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Hình thức *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: DropDownTextField(
                        listSpace: 10,
                        textFieldDecoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Chọn hình thức',
                        ),
                        listPadding: ListPadding(top: 10),
                        enableSearch: false,
                        validator: (value) {
                          if (value == null) {
                            return "Required field";
                          } else {
                            return null;
                          }
                        },
                        dropDownList: const [
                          DropDownValueModel(
                              name: 'Bất động sản bán', value: "value1"),
                          DropDownValueModel(
                              name: 'Bất động sản cho thuê', value: "value2"),
                        ],
                        listTextStyle: const TextStyle(color: sColor),
                        dropDownItemCount: 2,
                        onChanged: (val) {},
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Địa chỉ *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Có thể bổ sung hẻm, ngách...',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Tỉnh/ Thành phố',
                          color: sColor,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: kHeight * 0.06,
                          child: Obx(
                            () => controller.isLoadingProvinces.value
                                ? DropDownTextField(
                                    listSpace: 10,
                                    textFieldDecoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      hintText: 'Chọn',
                                    ),
                                    listPadding: ListPadding(top: 10),
                                    enableSearch: false,
                                    validator: (value) {
                                      if (value == null) {
                                        return "Required field";
                                      } else {
                                        return null;
                                      }
                                    },
                                    dropDownList: const [],
                                    listTextStyle:
                                        const TextStyle(color: sColor),
                                    dropDownItemCount: 2,
                                    onChanged: (val) {},
                                  )
                                : DropDownTextField(
                                    listSpace: 0,
                                    clearOption: false,
                                    textFieldDecoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      hintText: 'Chọn',
                                    ),
                                    listPadding: ListPadding(top: 5),
                                    enableSearch: true,
                                    searchDecoration: InputDecoration(
                                        hintText: 'Nhập tên Tỉnh/ Thành phố',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                        )),
                                    dropDownList: List.generate(
                                      controller.provinces.value!.length,
                                      (index) => DropDownValueModel(
                                          name:
                                              '${controller.provinces.value![index].name}',
                                          value:
                                              "${controller.provinces.value![index].code}"),
                                    ),
                                    listTextStyle:
                                        const TextStyle(color: sColor),
                                    dropDownItemCount: 5,
                                    onChanged: (val) {
                                      controller.getDistricts(
                                          code: val.value.toString());
                                    },
                                  ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Quận/ Huyện',
                                color: sColor,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: kHeight * 0.06,
                                child: Obx(
                                  () => controller.isLoadingDistricts.value
                                      ? DropDownTextField(
                                          listSpace: 10,
                                          clearOption: false,
                                          textFieldDecoration:
                                              const InputDecoration(
                                            contentPadding: EdgeInsets.all(15),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            hintText: 'Chọn',
                                          ),
                                          listPadding: ListPadding(top: 10),
                                          enableSearch: false,
                                          dropDownList: const [],
                                          listTextStyle:
                                              const TextStyle(color: sColor),
                                          dropDownItemCount: 2,
                                          onChanged: (val) {},
                                        )
                                      : DropDownTextField(
                                          listSpace: 0,
                                          controller:
                                              controller.districtsController,
                                          textFieldDecoration:
                                              const InputDecoration(
                                            contentPadding: EdgeInsets.all(15),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            hintText: 'Chọn',
                                          ),
                                          listPadding: ListPadding(top: 5),
                                          searchDecoration: InputDecoration(
                                              hintText: 'Nhập tên quận',
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                              )),
                                          enableSearch: true,
                                          clearOption: false,
                                          dropDownList:
                                              controller.districts.value == null
                                                  ? []
                                                  : List.generate(
                                                      controller.districts
                                                          .value!.length,
                                                      (index) => DropDownValueModel(
                                                          name:
                                                              '${controller.districts.value![index].name}',
                                                          value:
                                                              "${controller.districts.value![index].code}"),
                                                    ),
                                          listTextStyle:
                                              const TextStyle(color: sColor),
                                          dropDownItemCount: 5,
                                          onChanged: (val) {
                                            controller.getWards(
                                                code: val.value);
                                          },
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Phường/ Xã',
                                color: sColor,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: kHeight * 0.06,
                                child: Obx(
                                  () => controller.isLoadingWards.value
                                      ? DropDownTextField(
                                          listSpace: 10,
                                          clearOption: false,
                                          textFieldDecoration:
                                              const InputDecoration(
                                            contentPadding: EdgeInsets.all(15),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            hintText: 'Chọn',
                                          ),
                                          listPadding: ListPadding(top: 10),
                                          enableSearch: false,
                                          dropDownList: const [],
                                          listTextStyle:
                                              const TextStyle(color: sColor),
                                          dropDownItemCount: 2,
                                          onChanged: (val) {},
                                        )
                                      : DropDownTextField(
                                          listSpace: 0,
                                          controller:
                                              controller.wardsController,
                                          textFieldDecoration:
                                              const InputDecoration(
                                            contentPadding: EdgeInsets.all(15),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            hintText: 'Chọn',
                                          ),
                                          listPadding: ListPadding(top: 5),
                                          searchDecoration: InputDecoration(
                                              hintText: 'Nhập tên phường',
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                              )),
                                          enableSearch: true,
                                          clearOption: false,
                                          dropDownList:
                                              controller.wards.value == null
                                                  ? []
                                                  : List.generate(
                                                      controller
                                                          .wards.value!.length,
                                                      (index) => DropDownValueModel(
                                                          name:
                                                              '${controller.wards.value![index].name}',
                                                          value:
                                                              "${controller.wards.value![index].code}"),
                                                    ),
                                          listTextStyle:
                                              const TextStyle(color: sColor),
                                          dropDownItemCount: 5,
                                          onChanged: (val) {
                                            print(controller.wardsController
                                                .dropDownValue?.name);
                                          },
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              width: kWidth,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        text: 'Thông tin bài viết',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Tiêu đề *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: Bán căn hộ 50m2',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Mô tả *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      maxLines: 4,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'Mô tả thông tin về bất động sản của bạn ',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              width: kWidth,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        text: 'Thông tin bất động sản',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Diện tích (m2) *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: '0.00',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Mức giá (VND) *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: '0.00',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: kWidth * 0.4,
                      child: Obx(
                        () => CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          title: CustomText(
                            text: 'Giá thỏa thuận',
                            fontWeight: FontWeight.bold,
                            color: sColor,
                          ),
                          value: controller.isDeal.value,
                          onChanged: (newValue) {
                            controller.isDeal.value = newValue!;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Số lượng (nếu có)',
                              color: sColor,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: kHeight * 0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(15),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  hintText: 'VD: 10 tòa căn hộ',
                                ),
                              ),
                            ),
                          ],
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Chiều cao tầng *',
                              color: sColor,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: kHeight * 0.06,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(15),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  hintText: 'Nhập số tầng',
                                ),
                              ),
                            ),
                          ],
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Quy mô dự án *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: 85ha',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Chủ đầu tư (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: Vinhomes',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Quản lý vận hành (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: Vinhomes Service',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Thi công xây dựng (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: Coteccons',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Bàn giao (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Căn hộ bàn giao đầy đủ nội thất',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Thời điểm triển khai (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: Quý I 2024',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Mật độ xây dựng (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'VD: 19%',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Tiện ích lân cận (nếu có)',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      maxLines: 4,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        hintText: 'VD: Gần trường học, siêu thị...',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              width: kWidth,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  children: [
                    CustomText(
                      text: 'Hình ảnh & Video',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.privacy_tip_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: CustomText(
                            text: '''Quy định hình ảnh và video:
Đăng tối thiểu 4 ảnh với tất cả các loại tin
Đăng tối đa 10 ảnh với tất cả các loại tin
Dùng ảnh thật, không trùng, không chèn SĐT
Mỗi ảnh kích thước tối thiểu 100x100px, tối đa 15 MB''',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        controller.pickImages();
                      },
                      child: SizedBox(
                        width: kWidth * 0.36,
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
                      height: 20,
                    ),
                    Obx(
                      () => StaggeredGrid.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: List.generate(
                              controller.listImages.length,
                              (index) => StaggeredGridTile.count(
                                    crossAxisCellCount: index == 0 ? 3 : 1,
                                    mainAxisCellCount: index == 0 ? 1.5 : 0.7,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.file(
                                              File(
                                                  '${controller.listImages[index]}'),
                                              height: index == 0
                                                  ? kHeight * 0.3
                                                  : kHeight * 0.1,
                                              width: kWidth,
                                              fit: BoxFit.cover,
                                            )),
                                        IconButton(
                                            onPressed: () {
                                              controller.listImages.remove(
                                                  controller.listImages[index]);
                                            },
                                            icon: Icon(
                                              Icons.highlight_remove_sharp,
                                              color: sColor,
                                            ))
                                      ],
                                    ),
                                  ))),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              width: kWidth,
              child: Padding(
                padding: EdgeInsets.all(kWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        text: 'Thông tin liên hệ',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Tên liên hệ *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Tên liên hệ',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomText(
                      text: 'Số điện thoại *',
                      color: sColor,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: kHeight * 0.06,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          hintText: 'Số điện thoại',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
