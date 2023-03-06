import 'package:debt/core/theme/custom_paint/custom_paint_appbar.dart';
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
          appBar(theme),
          informationTextBox(theme),
          const SizedBox(
            height: 50,
          ),
          btnSetEdit(),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
      bottomNavigationBar: MyStyle.myBottomNavigationBar(),
    );
  }

  appBar(theme) {
    return SizedBox(
      height: Get.height / 2.5,
      child: CustomPaint(
        painter: AppbarCustom(),
        child: Stack(
          children: [
            Positioned(
              top: 40,
              right: 50,
              child: Text(
                MyStr.welcomeStr,
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
                style: theme.textTheme.headlineLarge,
              ),
            ),
            const Positioned(
                top: 100,
                right: 0,
                left: 0,
                child: Divider(color: Colors.white)),
            Positioned(
              top: 130,
              width: Get.width,
              right: 40,
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
                                backgroundColor: MyColor.btnBackColor,
                                radius: 15,
                                child: Image.asset(Assets.images.camera.path),
                              )),
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
                bottom: -58,
                left: 0,
                right: 3,
                child: Image.asset(Assets.images.vector.path))
          ],
        ),
      ),
    );
  }

  informationTextBox(theme) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          MyStr.titleEdietName,
          style: theme.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 25,
        ),
        const TextBoxUserWidget(),
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
        const TextBoxUserWidget(),
      ]),
    );
  }

  btnSetEdit() {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          fixedSize:
              MaterialStatePropertyAll(Size(Get.width / 3, Get.height / 12)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ))),
      child: const Text(MyStr.btnEditUser),
    );
  }
}
