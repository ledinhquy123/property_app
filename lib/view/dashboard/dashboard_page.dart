import 'package:app_bds/controller/dashboard/dashboard_controller.dart';
import 'package:app_bds/unit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  final controller = Get.put(DashboardController());
  DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.pages[controller.selectedTab.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedTab.value,
          onTap: (index) => controller.changeTab(index),
          selectedItemColor: sColor,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          unselectedFontSize: 13,
          selectedFontSize: 13,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_work), label: "Sản phẩm"),
            BottomNavigationBarItem(
                icon: Icon(Icons.post_add), label: "Đăng bài"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Thông báo"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Tài khoản"),
          ],
        ),
      ),
    );
  }
}
