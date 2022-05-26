import 'package:contrate_online/core/widgets_ui/text_form_field_ui.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormFieldUi(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormFieldUi(),
          )
        ],
      ),
    );
  }
}
