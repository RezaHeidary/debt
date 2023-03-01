import 'package:debt/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleInformation extends StatelessWidget {
  const CircleInformation(
      {super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
                  BoxShadow(color: Colors.white38, offset: Offset(-1, -1)

                      /// blurRadius: 12,
                      )
                ]),
            child: Image.asset(imagePath),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: theme.textTheme.titleLarge,
        )
      ],
    );
  }
}
