import 'package:e_localize/app/modules/home/controllers/home_controller.dart';
import 'package:e_localize/app/modules/home/views/text_form_login.dart';
import 'package:e_localize/app/services/caching.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'دليل الخدمات العامة',
              style: TextStyle(color: Colors.red, fontSize: 24.0),
            ),
            Text(
              'الدخول الى الحساب الشخصي',
              style: TextStyle(color: Colors.black, fontSize: 24.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormLogin(
              hintText: 'عنوان البريد الالكتروني',
              iconData: Icons.email,
              controller: controller.emailController,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormLogin(
              hintText: 'كلمة السر',
              iconData: Icons.lock,
              controller: controller.passwordController,
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () async {
                await CachingService.to.box
                    .put('email', controller.emailController.text);
                await CachingService.to.box
                    .put('password', controller.passwordController.text);
                controller.emailController.text = '';
                controller.passwordController.text = '';
              },
              child: Text(
                'دخول',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            Obx(
              () => Text(controller.cachedEmail.value),
            ),
            Obx(
              () => Text(controller.cachedPasswored.value),
            ),
            RaisedButton(
              onPressed: () async {
                controller.cachedEmail.value =
                    CachingService.to.box.get('email');
                controller.cachedPasswored.value =
                    CachingService.to.box.get('password');
              },
              child: Text(
                'حمل البيانات من الكاش',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
