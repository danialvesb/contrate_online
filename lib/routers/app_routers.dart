import 'package:contrate_online/routers/chat_routers.dart';
import 'package:contrate_online/routers/home_routers.dart';
import 'package:contrate_online/routers/splash_routers.dart';
import 'package:contrate_online/routers/work_details.dart';

class AppRouters {
  AppRouters._();

  static final routers = [
    ...SplashRouters.routers,
    ...HomesRouters.routers,
    ...WorkDetailsRouters.routers,
    ...ChatRouters.routers
  ];
}
