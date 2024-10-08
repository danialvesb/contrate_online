import 'package:contrate_online/modules/home/home_bindings.dart';
import 'package:contrate_online/modules/home/home_page.dart';
import 'package:get/route_manager.dart';

class HomesRouters {
  HomesRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
    ),
  ];
}
