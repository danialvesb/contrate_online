import 'package:contrate_online/modules/works/widgets/work_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './works_controller.dart';

class WorksPage extends GetView<WorksController> {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          40,
          (index) => const WorkWidget(),
        ),
      ),
    );
  }
}
