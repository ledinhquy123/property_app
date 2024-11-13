import 'package:app_bds/model/provinces/wards_model.dart';
import 'package:app_bds/service/provinces/provinces_service.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../model/provinces/districts_model.dart';
import '../../model/provinces/provinces_model.dart';

class PostingBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => PostingController());
  }
}

class PostingController extends GetxController {
  final isLoadingProvinces = false.obs;
  final isLoadingDistricts = false.obs;
  final provinces = ProvincesModel().data.obs;
  final districts = DistrictsModel().data.obs;
  final isLoadingWards = false.obs;
  final wards = WardsModel().data.obs;
  final isDeal = false.obs;
  final districtsController = SingleValueDropDownController();
  final wardsController = SingleValueDropDownController();
  final listImages = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProvinces();
  }

  void getProvinces() async {
    try {
      isLoadingProvinces.value = true;
      var result = await ProvincesApi.getProvinces();
      provinces.value = result?.data;
    } finally {
      isLoadingProvinces.value = false;
    }
  }

  void getDistricts({String? code}) async {
    try {
      isLoadingDistricts.value = true;
      var result = await ProvincesApi.getDistricts(code: code);
      districts.value = result?.data;
      districtsController.clearDropDown();
    } finally {
      isLoadingDistricts.value = false;
    }
  }

  void getWards({String? code}) async {
    try {
      isLoadingWards.value = true;
      var result = await ProvincesApi.getWards(code: code);
      wards.value = result?.data;
      wardsController.clearDropDown();
    } finally {
      isLoadingWards.value = false;
    }
  }

  void pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();

    if (images != null) {
      for (var i = 0; i < images.length; i++) {
        listImages.add(images[i].path);
      }
    } else {
      print('User not pick image');
    }
  }
}
