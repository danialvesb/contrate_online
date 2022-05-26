import 'package:contrate_online/core/widgets_ui/elevated_button_ui.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // SizedBox(
            //   width: context.width,
            //   height: context.height,
            //   child: Image.asset(
            //     'assets/images/splash.jpeg',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: context.width * .3,
                height: 50,
                child: ElevatedButtonUi(
                  voidCallback: () => Get.offAllNamed('/home'),
                  child: const Text('Continuar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
