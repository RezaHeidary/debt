import 'package:debt/home/view/home_view.dart';
import 'package:debt/route/pages.dart';
import 'package:get/get.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.initialRoute,
      page: () => const HomeView(),
    ),
  ];
}
