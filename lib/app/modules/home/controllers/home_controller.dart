import 'package:e_localize/app/data/Item.dart';
import 'package:e_localize/app/modules/home/views/actores_page.dart';
import 'package:e_localize/app/modules/home/views/login_page.dart';
import 'package:e_localize/app/modules/home/views/main_page.dart';
import 'package:e_localize/app/modules/home/views/rehabilation_services_page.dart';
import 'package:e_localize/app/modules/home/views/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        child: Text(
          'الرئيسية',
        ),
      ),
    ),
    Tab(
      child: Text(
        'ابحث',
      ),
    ),
    Tab(
      child: Text(
        'الخدمات التأهيلية',
      ),
    ),
    Tab(
        child: Text(
      'الجهات',
    )),
    Tab(
        child: Text(
      'دخول حساب',
    )),
  ];

  final items = [
    Item('الخدمات المشتركة', Icons.people),
    Item('السكن', Icons.home),
    Item('الحصول على دعم اجتماعي', Icons.ac_unit),
    Item('العمل', Icons.person),
    Item('الحصول على الرعاية الصحية', Icons.hot_tub),
  ];
  RxInt selectedPageIndex = 0.obs;

  final pages = [
    MainPage(),
    SearchPage(),
    RehabilationServicePage(),
    ActorsPage(),
    LoginPage(),
  ];

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxString cachedEmail = ''.obs;
  RxString cachedPasswored = ''.obs;
  void selectPage(int index) {
    selectedPageIndex.value = index;
    // title.value = pages[selectedPageIndex.value]['title'];
  }

  @override
  void onInit() {
    super.onInit();
    // tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    // tabController.dispose();
    super.onClose();
  }
}
