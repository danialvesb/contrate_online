import 'package:contrate_online/modules/customers/customers_controller.dart';
import 'package:contrate_online/modules/customers/widgets/customer_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CustomersPage extends GetView<CustomersController> {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomerWidget(),
      ],
    );
  }
}
