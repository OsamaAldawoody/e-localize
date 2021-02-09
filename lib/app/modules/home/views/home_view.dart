import 'package:e_localize/app/modules/home/views/coloredTabBar.dart';
import 'package:e_localize/app/modules/home/views/solid_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: controller.myTabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (ctx, value) {
            return [
              SliverAppBar(
                title: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Text(
                    'دليل الخدمات العامة',
                    style: TextStyle(),
                    strutStyle: StrutStyle(height: 1),
                  ),
                ),
                centerTitle: true,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: Image.asset(
                  'assets/images/home.jpg',
                  fit: BoxFit.cover,
                ),
                expandedHeight: 200,
                bottom: ColoredTabBar(
                  Colors.black54,
                  TabBar(
                    indicator: SolidIndicator(),
                    indicatorWeight: 10,

                    // controller: controller.tabController,
                    tabs: controller.myTabs,
                    onTap: (index) => controller.selectPage(index),
                  ),
                ),
              ),
            ];
          },
          body: Obx(() => controller.pages[controller.selectedPageIndex.value]),
        ),
      ),
    );
  }
}
/*
CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'دليل الخدمات العامة',
              style: TextStyle(
                backgroundColor: Colors.black54,
              ),
              strutStyle: StrutStyle(height: 1),
            ),
            centerTitle: true,
            floating: true,
            pinned: true,
            snap: false,
            flexibleSpace: Image.asset(
              'assets/images/home.jpg',
              fit: BoxFit.cover,
            ),
            expandedHeight: 200,
            bottom: TabBar(
                controller: controller.tabController, tabs: controller.myTabs),
          ),
        ],
      ),

 */
