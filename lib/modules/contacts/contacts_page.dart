import 'package:contrate_online/modules/contacts/widgets/contact_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './contacts_controller.dart';

class ContactsPage extends GetView<ContactsController> {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ContactWidget(),
      ],
    );
  }
}
