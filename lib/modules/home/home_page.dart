import 'package:contrate_online/core/widgets_ui/icon_buttom_ui.dart';
import 'package:contrate_online/core/widgets_ui/rounted_buttom_ui.dart';
import 'package:contrate_online/modules/home/widgets/register_service_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  void sheeBottomSheetService() {
    Get.bottomSheet(const RegisterServiceWidget());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contrate online'),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
              height: 55,
              child: Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButtomUi(
                      label: 'Serviços',
                      icon: FontAwesomeIcons.helmetSafety,
                      voidCallback: () => controller.tabIndex = 0,
                      primaryColor: controller.tabIndex == 0
                          ? Theme.of(context).primaryColor
                          : Colors.grey[400]!,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButtomUi(
                      label: 'Meus serviços',
                      icon: FontAwesomeIcons.solidFolder,
                      voidCallback: () => controller.tabIndex = 1,
                      primaryColor: controller.tabIndex == 1
                          ? Theme.of(context).primaryColor
                          : Colors.grey[400]!,
                    ),
                    const Spacer(),
                    IconButtomUi(
                      label: 'Contatos',
                      icon: FontAwesomeIcons.solidIdCard,
                      voidCallback: () => controller.tabIndex = 2,
                      primaryColor: controller.tabIndex == 2
                          ? Theme.of(context).primaryColor
                          : Colors.grey[400]!,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IconButtomUi(
                      label: 'Perfil',
                      icon: FontAwesomeIcons.solidUser,
                      voidCallback: () => controller.tabIndex = 3,
                      primaryColor: controller.tabIndex == 3
                          ? Theme.of(context).primaryColor
                          : Colors.grey[400]!,
                    )
                  ],
                );
              })),
        ),
        body: Navigator(
          key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
          onGenerateRoute: controller.onGenerateRoute,
          initialRoute: '/works',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: RountedButtomUi(
          voidCallback: sheeBottomSheetService,
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
