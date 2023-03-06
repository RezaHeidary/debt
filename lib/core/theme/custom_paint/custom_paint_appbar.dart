import 'package:flutter/material.dart';

class AppbarCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.6464231);
    path_0.cubicTo(0, size.height * 0.6567949, 0, size.height * 0.6619795,
        size.width * 0.0002091244, size.height * 0.6666077);
    path_0.cubicTo(
        size.width * 0.004162667,
        size.height * 0.7540949,
        size.width * 0.06322359,
        size.height * 0.8294231,
        size.width * 0.1472413,
        size.height * 0.8541385);
    path_0.cubicTo(
        size.width * 0.1516849,
        size.height * 0.8554462,
        size.width * 0.1567190,
        size.height * 0.8566821,
        size.width * 0.1667862,
        size.height * 0.8591564);
    path_0.lineTo(size.width * 0.1667913, size.height * 0.8591564);
    path_0.cubicTo(
        size.width * 0.1878449,
        size.height * 0.8643308,
        size.width * 0.1983715,
        size.height * 0.8669154,
        size.width * 0.2088015,
        size.height * 0.8692974);
    path_0.cubicTo(
        size.width * 0.4004667,
        size.height * 0.9130769,
        size.width * 0.5995333,
        size.height * 0.9130769,
        size.width * 0.7911974,
        size.height * 0.8692974);
    path_0.cubicTo(
        size.width * 0.8016282,
        size.height * 0.8669154,
        size.width * 0.8121538,
        size.height * 0.8643308,
        size.width * 0.8332051,
        size.height * 0.8591590);
    path_0.lineTo(size.width * 0.8332077, size.height * 0.8591564);
    path_0.lineTo(size.width * 0.8332128, size.height * 0.8591564);
    path_0.cubicTo(
        size.width * 0.8432795,
        size.height * 0.8566821,
        size.width * 0.8483154,
        size.height * 0.8554462,
        size.width * 0.8527590,
        size.height * 0.8541385);
    path_0.cubicTo(
        size.width * 0.9367769,
        size.height * 0.8294231,
        size.width * 0.9958385,
        size.height * 0.7540949,
        size.width * 0.9997897,
        size.height * 0.6666077);
    path_0.cubicTo(size.width, size.height * 0.6619795, size.width,
        size.height * 0.6567949, size.width, size.height * 0.6464256);
    path_0.lineTo(size.width, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff2A2D53).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5639667, size.height * 0.9324205);
    path_1.lineTo(size.width * 0.5735231, size.height * 0.9228641);
    path_1.cubicTo(
        size.width * 0.5914462,
        size.height * 0.9049410,
        size.width * 0.6157538,
        size.height * 0.8948718,
        size.width * 0.6411026,
        size.height * 0.8948718);
    path_1.lineTo(size.width * 0.3516718, size.height * 0.8948718);
    path_1.cubicTo(
        size.width * 0.3770179,
        size.height * 0.8948718,
        size.width * 0.4013282,
        size.height * 0.9049410,
        size.width * 0.4192513,
        size.height * 0.9228641);
    path_1.lineTo(size.width * 0.4288077, size.height * 0.9324205);
    path_1.cubicTo(
        size.width * 0.4661308,
        size.height * 0.9697436,
        size.width * 0.5266436,
        size.height * 0.9697436,
        size.width * 0.5639667,
        size.height * 0.9324205);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff2A2D53).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
