import 'package:debt/core/theme/style.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:debt/modules/user/widget/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/colors.dart';
import '../../../gen/assets.gen.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: Get.height / 2.3,
            child: Stack(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height / 2.5,
                  decoration: const BoxDecoration(
                      color: MyColor.appBarColor,
                      borderRadius: BorderRadiusDirectional.vertical(
                          bottom: Radius.elliptical(200, 80))),
                ),
                Positioned(
                  top: 40,
                  right: 50,
                  child: Text(
                    "سلام خوش اومدی ",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 50,
                  child: Text(
                    "علی مجلسی ",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 40,
                  child: Text(
                    "Logo",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                const Positioned(
                    top: 100,
                    right: 0,
                    left: 0,
                    child: Divider(color: Colors.white)),
                Positioned(
                  top: 135,
                  width: Get.width,
                  right: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: .9,
                        child: Container(
                          width: Get.width / 5,
                          height: Get.height / 9,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Stack(
                            children: [
                              Image.asset(Assets.images.ellipse.path),
                              Positioned(
                                  bottom: 0,
                                  child: CircleAvatar(
                                    backgroundColor: MyColor.btnColor,
                                    radius: 15,
                                    child:
                                        Image.asset(Assets.images.camera.path),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "علی مجلسی ",
                          style: theme.textTheme.titleLarge,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 245,
                  right: 170,
                  left: 170,
                  child: Container(
                    height: Get.height / 15,
                    decoration: const BoxDecoration(
                      color: MyColor.appBarColor,
                      borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.elliptical(500, 400),
                          bottomStart: Radius.elliptical(500, 400),
                          topEnd: Radius.elliptical(300, 100),
                          topStart: Radius.elliptical(300, 100)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: Image.asset(Assets.images.vector.path),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                MyStr.titleEdietName,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 25,
              ),
              const UserWidget(),
              const SizedBox(
                height: 25,
              ),
              Text(
                MyStr.titleEdietPhone,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 25,
              ),
              const UserWidget(),
            ]),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(
                    Size(Get.width / 3, Get.height / 12)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
            child: const Text(MyStr.btnEditUser),
          ),
          const SizedBox(
            height: 25,
          ),
        ]),
      ),
      bottomNavigationBar: MyStyle.myBottomNavigationBar(),
    );
  }
}
