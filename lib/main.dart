import 'package:contrate_online/core/bindings/application_binding.dart';
import 'package:contrate_online/core/theme/app_theme_ui.dart';
import 'package:contrate_online/routers/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Contrate online',
      initialBinding: ApplicationBinding(),
      theme: AppThemeUi.theme,
      initialRoute: '/home',
      getPages: AppRouters.routers,
    );
  }
}
