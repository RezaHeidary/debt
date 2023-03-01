import 'package:another_stepper/dto/stepper_data.dart';
import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReceiveWidget {
  ReceiveWidget._();

  static widgetMyStepper(
      bool isSelcted, Color color, Color borderColor, Color textColor) {
    return StepperData(
        title: StepperText(
          MyStr.formStr,
          textStyle: TextStyle(
            color: textColor,
          ),
        ),
        subtitle: StepperText(MyStr.formBodyStr),
        iconWidget: Container(
          decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(30))),
          child: isSelcted == false
              ? null
              : const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
        ));
  }

  static widgetBtnRReceive(bool isReport) {
    return ButtonStyle(
        elevation: const MaterialStatePropertyAll(.0),
        backgroundColor: MaterialStatePropertyAll(
            isReport ? Colors.white70 : MyColor.btnColor),
        fixedSize:
            MaterialStatePropertyAll(Size(Get.width / 2.8, Get.height / 12)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          side: BorderSide(
              width: .9, color: isReport ? Colors.black26 : MyColor.btnColor),
          borderRadius: BorderRadius.circular(20),
        )));
  }
}
