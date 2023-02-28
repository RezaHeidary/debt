import 'package:another_stepper/dto/stepper_data.dart';
import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/value/my_str.dart';
import 'package:flutter/material.dart';

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
        elevation: const MaterialStatePropertyAll(1),
        backgroundColor: MaterialStatePropertyAll(
            isReport ? Colors.white : MyColor.btnColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        )));
  }
}
