import 'package:debt/core/theme/colors.dart';
import 'package:debt/core/theme/value/my_str.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: CustomShapeBorder(),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: Column(children: []),
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

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    const double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75,
        rect.height + 50);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}
