import 'package:debt/modules/Receive%20a%20loan/view/receive_view.dart';
import 'package:debt/modules/home/view/home_view.dart';
import 'package:debt/modules/user/view/user_view.dart';
import 'package:debt/route/pages.dart';
import 'package:get/get.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.initialRoute,
      page: () => const HomeView(),
    ),
    GetPage(
      name: NamedRoute.receiveView,
      page: () => ReceiveView(),
    ),
    GetPage(
      name: NamedRoute.userView,
      page: () => const UserView(),
    ),
  ];
}
