import 'package:app_bds/view/account/account_page.dart';
import 'package:app_bds/view/home/home_page.dart';
import 'package:app_bds/view/notification/notification_page.dart';
import 'package:app_bds/view/posting/posting_page.dart';
import 'package:app_bds/view/product/product_page.dart';
import 'package:get/get.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => DashboardController());
  }
}

class DashboardController extends GetxController {
  final selectedTab = 0.obs;
  final pages = [
    HomePage(),
    ProductPage(),
    PostingPage(),
    NotificationPage(),
    AccountPage(),
  ];
  void changeTab(index) {
    selectedTab.value = index;
  }
}
