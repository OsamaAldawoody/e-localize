import 'package:e_localize/app/services/caching.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CachingService());
  }
}
