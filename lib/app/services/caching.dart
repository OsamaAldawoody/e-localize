import 'package:get/get.dart';
import 'package:hive/hive.dart';

class CachingService extends GetxService {
  Box box;

  static CachingService get to => Get.find();
  @override
  void onInit() async {
    box = await Hive.openBox('user');
    super.onInit();
  }
}
