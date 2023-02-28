import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/theme/style.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:debt/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:debt/modules/Receive a loan/widget/receive_widget.dart';

// ignore: must_be_immutable
class ReceiveView extends StatelessWidget {
  ReceiveView({super.key});
  Rx<int> indexPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    List<StepperData> stepperData = [
      ReceiveWidget.widgetMyStepper(
        true,
        MyColor.btnColor,
        MyColor.btnColor,
        MyColor.btnColor,
      ),
      ReceiveWidget.widgetMyStepper(
        false,
        Colors.white,
        MyColor.btnColor,
        Colors.black,
      ),
      ReceiveWidget.widgetMyStepper(
        false,
        Colors.grey,
        Colors.grey,
        Colors.black,
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
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
                                  color: Colors.white30,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white10,
                                      offset: Offset(3, 2),

                                      /// blurRadius: 12,
                                    )
                                  ]),
                              child: Image.asset(
                                  Assets.images.batteryCharging.path),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              "دریافت وام",
                              style: theme.textTheme.titleLarge,
                            ),
                          )
                        ],
                      ),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: Get.height / 1.9,
                width: Get.width,
                child: Obx(
                  () => IndexedStack(
                    index: indexPage.value,
                    children: [
                      startProgress(stepperData),
                      applicantRequest(theme)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyStyle.myBottomNavigationBar(),
    );
  }

  startProgress(stepperData) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: AnotherStepper(
            stepperList: stepperData,
            stepperDirection: Axis.vertical,
            iconWidth: 30,
            iconHeight: 30,
            activeBarColor: MyColor.btnColor,
            inActiveBarColor: Colors.grey,
            verticalGap: 31,
            activeIndex: 1,
            barThickness: 1,
          ),
        ),
        ElevatedButton(
            style: ReceiveWidget.widgetBtnRReceive(false),
            onPressed: () {
              indexPage.value = 1;
            },
            child: SizedBox(
              width: Get.width / 2.8,
              height: Get.height / 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.images.work.path),
                  const Text(MyStr.btnSteperStr),
                ],
              ),
            ))
      ],
    );
  }

  applicantRequest(theme) {
    return SizedBox(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Get.width / 1.3,
            height: Get.height / 4.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black26),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "درخواست متقاضی",
                      style: theme.textTheme.bodyLarge,
                    ),
                    Text(
                      MyStr.bodyReceive,
                      style: theme.textTheme.bodySmall,
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "امتیاز این مرحله",
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width / 5,
            height: Get.height / 22,
            decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              "بسیار خوب",
              style: TextStyle(color: Colors.amber[800]),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: SmoothStarRating(
                onRatingChanged: (v) {},
                rating: 4,
                starCount: 5,
                size: 40.0,
                color: Colors.amber,
                borderColor: Colors.amber,
                spacing: 0.0),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ReceiveWidget.widgetBtnRReceive(false),
                child: const Text("مرحله بعد"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ReceiveWidget.widgetBtnRReceive(true),
                child: Text(
                  "ارسال گزارش",
                  style: theme.textTheme.bodyLarge,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
