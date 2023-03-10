import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:debt/gen/assets.gen.dart';
import 'package:debt/route/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyStyle {
  MyStyle._();
  static Rx<int> currentIndex = 2.obs;
  static myBottomNavigationBar() {
    return Obx(
      () => SizedBox(
        height: Get.height / 10,
        child: BottomNavigationBar(
          currentIndex: currentIndex.value,
          onTap: (index) {
            switch (index) {
              case 0:
                Get.offNamed(NamedRoute.userView);
                currentIndex.value = index;
                break;
              case 1:
                Get.offNamed(NamedRoute.receiveView);
                currentIndex.value = index;
                break;
              case 2:
                Get.offNamed(NamedRoute.initialRoute);
                currentIndex.value = index;
                break;
              default:
            }
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: MyColor.appBarColor,
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(Assets.images.profile.path)),
                label: MyStr.userNavStr),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(Assets.images.work.path)),
                label: MyStr.manageNavStr),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(Assets.images.home.path)),
              label: MyStr.homeNavStr,
            ),
          ],
        ),
      ),
    );
  }
}
