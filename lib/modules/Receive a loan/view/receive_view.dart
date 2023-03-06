import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/theme/custom_paint/custom_paint_appbar.dart';
import 'package:debt/core/theme/style.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:debt/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        MyColor.btnBackColor,
        MyColor.btnBackColor,
        MyColor.btnBackColor,
      ),
      ReceiveWidget.widgetMyStepper(
        false,
        Colors.white,
        MyColor.btnBackColor,
        Colors.black,
      ),
      ReceiveWidget.widgetMyStepper(
          false,
          const Color.fromARGB(255, 239, 239, 242),
          const Color.fromARGB(255, 239, 239, 242),
          Colors.black),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(theme),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => IndexedStack(
                index: indexPage.value,
                children: [startProgress(stepperData), applicantRequest(theme)],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MyStyle.myBottomNavigationBar(),
    );
  }

  appBar(theme) {
    return CustomPaint(
      painter: AppbarCustom(),
      child: SizedBox(
        height: Get.height / 2.5,
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
              top: 135,
              width: Get.width,
              right: 35,
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
                          color: MyColor.circleColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white38, offset: Offset(-1, -1)

                                /// blurRadius: 12,
                                )
                          ]),
                      child: Image.asset(Assets.images.batteryCharging.path),
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
                bottom: -58,
                left: 0,
                right: 3,
                child: Image.asset(Assets.images.vector.path))
          ],
        ),
      ),
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
            activeBarColor: MyColor.btnBackColor,
            inActiveBarColor: const Color.fromARGB(255, 239, 239, 242),
            verticalGap: 45,
            activeIndex: 1,
            barThickness: 2,
          ),
        ),
        ElevatedButton(
            style: ButtonStyle(
                elevation: const MaterialStatePropertyAll(1),
                backgroundColor:
                    const MaterialStatePropertyAll(MyColor.btnBackColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ))),
            onPressed: () {
              indexPage.value = 1;
            },
            child: SizedBox(
              width: Get.width / 2.8,
              height: Get.height / 12.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.images.work.path),
                  const Text(MyStr.btnSteperStr),
                ],
              ),
            )),
        const SizedBox(
          height: 50,
        )
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
            width: Get.width / 1.2,
            height: Get.height / 3.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black26),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      MyStr.applying,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        MyStr.bodyReceive,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            MyStr.point,
            style: theme.textTheme.labelLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: Get.width / 5,
            height: Get.height / 22,
            decoration: BoxDecoration(
                color: MyColor.likeBodyColor,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              "بسیار خوب",
              style: TextStyle(color: Colors.amber[700]),
            )),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.images.star.path),
              const SizedBox(
                width: 15,
              ),
              Image.asset(Assets.images.starfill.path),
              const SizedBox(
                width: 15,
              ),
              Image.asset(Assets.images.starfill.path),
              const SizedBox(
                width: 15,
              ),
              Image.asset(Assets.images.starfill.path),
              const SizedBox(
                width: 15,
              ),
              Image.asset(Assets.images.starfill.path),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ReceiveWidget.widgetBtnRReceive(false),
                child: const Text(MyStr.next),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ReceiveWidget.widgetBtnRReceive(true),
                child: const Text(
                  MyStr.sendReport,
                  style: TextStyle(color: MyColor.btnSendReport),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
