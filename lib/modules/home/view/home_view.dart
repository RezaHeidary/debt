import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/theme/style.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:debt/gen/assets.gen.dart';
import 'package:debt/modules/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/home_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 2,
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: Get.height / 2.2,
                      decoration: const BoxDecoration(
                          color: MyColor.appBarColor,
                          borderRadius: BorderRadiusDirectional.vertical(
                              bottom: Radius.elliptical(200, 80))),
                    ),
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
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    const Positioned(
                        top: 100,
                        right: 0,
                        left: 0,
                        child: Divider(color: Colors.white)),
                    Positioned(
                      top: 140,
                      child: SizedBox(
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleInformation(
                              imagePath: Assets.images.eletro.path,
                              title: MyStr.electricity,
                            ),
                            CircleInformation(
                              imagePath: Assets.images.water.path,
                              title: MyStr.water,
                            ),
                            CircleInformation(
                              imagePath: Assets.images.moneys.path,
                              title: MyStr.bank,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 280,
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
              SizedBox(
                height: Get.height / 2.6,
                child: GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: HomeModel.imagePath.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: Get.height / 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              shape: BoxShape.circle),
                          child: Image.asset(HomeModel.imagePath[index]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          HomeModel.titel[index],
                          style: theme.textTheme.bodyLarge,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyStyle.myBottomNavigationBar());
  }
}
