import 'package:app_bds/unit.dart';
import 'package:app_bds/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_bds/controller/account/account_controller.dart';
import '../../widget/button_account.dart';

class AccountPage extends StatelessWidget {
  AccountPage({Key? key}) : super(key: key);
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Obx(() {
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Column(
                children: [
                  if (controller.auth.value == null)
                    Column(
                      children: [
                        Container(
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
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Xin chào',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Mã giới thiệu : ',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    Get.toNamed('/setting');
                                  },
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: sColor),
                          child: Padding(
                            padding: EdgeInsets.all(kWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.grey[200],
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '0',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Đã tham gia',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '0',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Cấp dưới',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '0',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Thu nhập',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/bn.png',
                          height: kHeight * 0.15,
                          fit: BoxFit.cover,
                          width: kWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.all(kWidth * 0.05),
                          child: Column(
                            children: [
                              ButtonAccount(
                                title: 'Liên hệ hỗ trợ',
                                icon: Icons.call,
                                onPress: () {
                                  Get.bottomSheet(
                                    SizedBox(
                                      height: kHeight * 0.3,
                                      child: Padding(
                                        padding: EdgeInsets.all(kWidth * 0.05),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              text: 'Liên hệ hỗ trợ',
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
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
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: sColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Icon(
                                                          Icons.call,
                                                          color: Colors.white,
                                                          size: 30,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: 'Gọi qua Hotline',
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
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Đăng nhập',
                                icon: Icons.person,
                                onPress: () {
                                  Get.offAllNamed('/login');
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  else
                    Column(
                      children: [
                        Container(
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
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: controller.auth.value?.fullname,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Mã giới thiệu : 123456',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {
                                    Get.toNamed('/setting');
                                  },
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(color: sColor),
                          child: Padding(
                            padding: EdgeInsets.all(kWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.grey[200],
                                  child: Icon(
                                    Icons.person_outline,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '12',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Đã tham gia',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '2',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Cấp dưới',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CustomText(
                                      text: '10.000',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    CustomText(
                                      text: 'Thu nhập',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/bn.png',
                          height: kHeight * 0.15,
                          fit: BoxFit.cover,
                          width: kWidth,
                        ),
                        Padding(
                          padding: EdgeInsets.all(kWidth * 0.05),
                          child: Column(
                            children: [
                              ButtonAccount(
                                title: 'Thông tin cá nhân & định danh',
                                icon: Icons.person,
                                onPress: () {
                                  Get.toNamed('/informationAndId'
                                  );
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Dự án & hoa hồng',
                                icon: Icons.home_work,
                                onPress: () {
                                  Get.toNamed('/projectAndCommission');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Khách hàng',
                                icon: Icons.people_alt_outlined,
                                onPress: () {
                                  Get.toNamed('/customer');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Thông tin thanh toán',
                                icon: Icons.credit_card,
                                onPress: () {
                                  Get.toNamed('/bank');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Tin đăng của tôi',
                                icon: Icons.post_add,
                                onPress: () {
                                  Get.toNamed('/posts');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Thông tin cấp dưới',
                                icon: Icons.account_tree,
                                onPress: () {
                                  Get.toNamed('/inferior');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Giới thiệu bạn mới',
                                icon: Icons.person_add_alt_1,
                                onPress: () {
                                  Get.toNamed('/inviteFriend');
                                },
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              ButtonAccount(
                                title: 'Liên hệ hỗ trợ',
                                icon: Icons.call,
                                onPress: () {
                                  Get.bottomSheet(
                                    SizedBox(
                                      height: kHeight * 0.3,
                                      child: Padding(
                                        padding: EdgeInsets.all(kWidth * 0.05),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText(
                                              text: 'Liên hệ hỗ trợ',
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
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
                                              onTap: () {},
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: sColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Icon(
                                                          Icons.call,
                                                          color: Colors.white,
                                                          size: 30,
                                                        )),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  CustomText(
                                                    text: 'Gọi qua Hotline',
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
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.logout();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.red),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0,
                                              1), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0,
                                        top: 5,
                                        bottom: 5,
                                        right: 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.logout,
                                              color: Colors.red,
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            CustomText(
                                              text: 'Đăng xuất',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.chevron_right,
                                              color: Colors.red,
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
