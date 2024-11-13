import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboaController());
  }
}

class OnboaController extends GetxController {
  final isloading = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkonbo();
  }

  void checkonbo() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    if (token != null) {
      isloading.value = true;
      Get.offAllNamed('/dashboardPage');
    } else {
      Get.offAllNamed('/onboarding');
    }
  }
}
