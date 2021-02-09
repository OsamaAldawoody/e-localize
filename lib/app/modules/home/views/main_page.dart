import 'package:e_localize/app/modules/home/controllers/home_controller.dart';
import 'package:e_localize/app/modules/home/views/most_use_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';

class MainPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: Text(
              'ابحث عن خدمة',
              style: TextStyle(color: Colors.red, fontSize: 30.0),
            ),
            children: [
              ListTile(
                title: Text('المحافظة'),
                trailing: DropdownButton(
                    underline: Container(),
                    items: [
                      DropdownMenuItem(
                        child: Text('اختر المحافظة'),
                      ),
                      DropdownMenuItem(
                        child: Text('القاهرة'),
                      ),
                      DropdownMenuItem(
                        child: Text('المنصورة'),
                      ),
                    ],
                    onChanged: (val) {}),
              ),
              ListTile(
                title: Text('المنطقة'),
                trailing: DropdownButton(
                    underline: Container(),
                    items: [
                      DropdownMenuItem(
                        child: Text('اختر المنطقة'),
                      ),
                      DropdownMenuItem(
                        child: Text('الحي العاشر'),
                      ),
                      DropdownMenuItem(
                        child: Text('عباس'),
                      ),
                      DropdownMenuItem(
                        child: Text('مكرم'),
                      ),
                    ],
                    onChanged: (val) {}),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'ابحث',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ],
          ),
          Container(
            height: 200,
            width: Get.width,
            child: Swiper(
              itemCount: 5,
              itemBuilder: (ctx, index) {
                var item = controller.items[index];
                return ServiceItem(
                  icon: item.iconData,
                  text: item.name,
                );
              },
              controller: SwiperController(),
              layout: SwiperLayout.DEFAULT,
              scrollDirection: Axis.horizontal,
              itemHeight: 500,
              itemWidth: Get.width,
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'الخدمات الأكثر استخدامًا',
            style: TextStyle(color: Colors.red, fontSize: 30.0),
          ),
          Container(
            height: 200,
            width: Get.width,
            child: Swiper(
              itemCount: 5,
              itemBuilder: (ctx, index) {
                var item = controller.items[index];
                return MostUseCard();
              },
              controller: SwiperController(),
              layout: SwiperLayout.DEFAULT,
              scrollDirection: Axis.horizontal,
              itemHeight: 500,
              itemWidth: Get.width,
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final text;
  final IconData icon;
  ServiceItem({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50.0,
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
