import 'package:debt/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/theme.dart';
import 'route/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("fa"),
      theme: Themes.theme,
      title: 'Debt',
      initialRoute: NamedRoute.initialRoute,
      getPages: Pages.pages,
    );
  }
}
