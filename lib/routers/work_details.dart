import 'package:contrate_online/modules/work_details/work_details_bindings.dart';
import 'package:contrate_online/modules/work_details/work_details_page.dart';
import 'package:get/route_manager.dart';

class WorkDetailsRouters {
  WorkDetailsRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/work_details',
      binding: WorkDetailsBindings(),
      page: () => const WorkDetailsPage(),
    ),
  ];
}
