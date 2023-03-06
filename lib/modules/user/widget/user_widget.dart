import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';

class TextBoxUserWidget extends StatelessWidget {
  const TextBoxUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              width: Get.width / 1.5,
              child: TextField(
                style: theme.textTheme.bodyMedium,
                decoration: const InputDecoration(border: InputBorder.none),
              ),
            ),
            Image.asset(Assets.images.edit.path)
          ],
        ),
      ),
    );
  }
}
