import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/theme/value/my_str.dart';
import 'package:debt/gen/assets.gen.dart';
import 'package:debt/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/home_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Stack(
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
                    top: 250,
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
                  SizedBox(
                    height: Get.height / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircleIformation(
                          imagePath: Assets.images.eletro.path,
                          title: "اداره برق",
                        ),
                        CircleIformation(
                          imagePath: Assets.images.water.path,
                          title: "اداره آب",
                        ),
                        CircleIformation(
                          imagePath: Assets.images.moneys.path,
                          title: "بانک",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height / 2.5,
                child: GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: HomeModel.imagePath.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: Get.height / 8,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          child: Image.asset(HomeModel.imagePath[index]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(HomeModel.titel[index])
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: Get.height / 9,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: MyColor.appBarColor,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: MyStr.userNavStr),
            BottomNavigationBarItem(
                icon: Icon(Icons.ballot), label: MyStr.manageNavStr),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: MyStr.homeNavStr,
            ),
          ],
        ),
      ),
    );
  }
}
